import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:lienhoa_gate_controller/features/alpr/data/alpr_client_providers.dart';
import 'package:lienhoa_gate_controller/features/auto_gate/domain/auto_gate_controller_state.dart';
import 'package:lienhoa_gate_controller/features/camera/application/camera_providers.dart';
import 'package:lienhoa_gate_controller/features/log_view/application/log_view_providers.dart';
import 'package:lienhoa_gate_controller/features/raspi_gate/application/raspi_gate_control_providers.dart';
import 'package:lienhoa_gate_controller/features/raspi_gate/data/raspi_gate_control_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_gate_service.g.dart';

@riverpod
class AutoGateController extends _$AutoGateController {
  RaspiGateControlClient get _raspiGateControlClient =>
      ref.read(raspiGateControlClientProvider);

  final _allowedLicensePlates = ['43A27208'];

  @override
  AutoGateControllerState build() {
    _reset();
    ref.listen(raspiDistanceSensorValueStreamProvider, (previous, next) {
      switch (next) {
        // Auto capture image when distance sensor value is less than 10 cm
        case AsyncData(:final value) when value <= 10 && !state.isProcessing:
          _startProccess();
      }
    });

    return const AutoGateControllerState();
  }

  void manualStartProcess() {
    if (!state.isProcessing) {
      _startProccess();
    }
  }

  String _getTimeNow() {
    final now = DateTime.now();
    final hours = now.hour.toString().padLeft(2, '0');
    final minutes = now.minute.toString().padLeft(2, '0');
    final seconds = now.second.toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  String? _checkMatchLicensePlate(List<String> licensePlate) {
    return licensePlate.firstWhereOrNull(_allowedLicensePlates.contains);
  }

  void _log(String message) {
    ref
        .read(logListDataProvider.notifier)
        .addLog('${_getTimeNow()} - $message');
  }

  Future<void> _reset() async {
    state = const AutoGateControllerState();
    ref.read(raspiDistanceSensorValueStreamProvider.notifier).resume();
    await _raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.none,
    );
    await _raspiGateControlClient.setScreenText(text: 'Welcome');
  }

  Future<void> _begin() async {
    _log('Phát hiện xe vào');
    ref.read(raspiDistanceSensorValueStreamProvider.notifier).pause();
    state = state.copyWith(isProcessing: true);
    await _raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.processing,
    );
  }

  Future<Uint8List?> _getImage() async {
    return ref.read(capturedCameraImageProvider.notifier).captureNewImage();
  }

  Future<List<String>> _getLicensePlates(Uint8List image) async {
    final tempSub = ref.listen(
      alprGetLicensePlatesFutureProvider(image),
      (_, __) {},
    );

    final result =
        await ref.read(alprGetLicensePlatesFutureProvider(image).future);

    tempSub.close();
    return result;
  }

  Future<void> _denyEntry() async {
    await _raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.deny,
    );
  }

  Future<void> _allowEntry(String licensePlateText) async {
    await _raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.allow,
    );

    await _raspiGateControlClient.setGateState(state: RaspiGateState.open);
  }

  Future<void> _warnCloseGate() async {
    await _raspiGateControlClient.makeSound(
      frequency: 600,
      duration: 0.5,
    );
  }

  Future<void> _closeGate() async {
    await _raspiGateControlClient.setGateState(state: RaspiGateState.close);
    await _raspiGateControlClient.setScreenText(text: '');
  }

  Future<void> _startProccess() async {
    try {
      await _begin();
      final image = await _getImage();

      if (image == null) {
        _log('Không chụp được ảnh!');
        await _reset();
        return;
      }

      final candidates = await _getLicensePlates(image);

      if (candidates.isEmpty) {
        _log('Không có biển số xe nào được phát hiện');
        await _reset();
        await Future.delayed(const Duration(seconds: 2));
        return;
      }

      final licensePlate = _checkMatchLicensePlate(candidates);
      final displayLicensePlate = licensePlate ?? candidates.first;
      _log('Phát hiện biển số xe: $displayLicensePlate');
      await ref.read(raspiGateControlClientProvider).setScreenText(
            text: 'Bien so xe \n\n$displayLicensePlate',
          );

      if (licensePlate == null) {
        _log('Không cho xe vào');
        await _denyEntry();
        await Future.delayed(const Duration(seconds: 2));
        await _reset();
        return;
      }

      await _allowEntry(licensePlate);
      _log('Xe được phép vào');

      await Future.delayed(const Duration(seconds: 5));
      await _warnCloseGate();
      await Future.delayed(const Duration(seconds: 2));
      await _closeGate();
    } catch (e) {
      _log('Error: $e');
      rethrow;
    } finally {
      await _reset();
    }
  }
}
