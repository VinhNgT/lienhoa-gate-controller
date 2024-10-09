import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/backend/alpr/data/alpr_client_providers.dart';
import 'package:lienhoa_gate_controller/backend/camera/application/camera_providers.dart';
import 'package:lienhoa_gate_controller/backend/raspi_gate/application/raspi_gate_control_providers.dart';
import 'package:lienhoa_gate_controller/backend/raspi_gate/data/raspi_gate_control_client.dart';
import 'package:lienhoa_gate_controller/features/log_view/application/log_view_providers.dart';
import 'package:lienhoa_gate_controller/features/settings/application/settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_gate_service.g.dart';

class AutoGateService {
  AutoGateService({
    required this.ref,
    required this.allowedLicensePlates,
    required this.raspiGateControlClient,
  }) {
    _reset();
  }

  final AutoDisposeRef ref;
  final List<String> allowedLicensePlates;
  final RaspiGateControlClient raspiGateControlClient;

  bool _isProcessing = false;
  bool get isProcessing => _isProcessing;

  String _getTimeNow() {
    final now = DateTime.now();
    final hours = now.hour.toString().padLeft(2, '0');
    final minutes = now.minute.toString().padLeft(2, '0');
    final seconds = now.second.toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  String? _checkMatchLicensePlate(List<String> licensePlate) {
    return licensePlate.firstWhereOrNull(allowedLicensePlates.contains);
  }

  void _log(String message) {
    ref
        .read(logListDataProvider.notifier)
        .addLog('${_getTimeNow()} - $message');
  }

  Future<void> _reset() async {
    _isProcessing = false;
    ref.read(raspiDistanceSensorValueStreamProvider.notifier).resume();
    await raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.none,
    );
    await raspiGateControlClient.setScreenText(text: 'Welcome');
  }

  Future<void> _begin() async {
    _isProcessing = true;
    _log('Phát hiện xe vào');
    ref.read(raspiDistanceSensorValueStreamProvider.notifier).pause();
    await raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.carDetected,
    );
  }

  Future<Uint8List?> _getImage() async {
    await raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.processing,
    );
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
    await raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.deny,
    );
  }

  Future<void> _allowEntry(String licensePlateText) async {
    await raspiGateControlClient.setStatusLights(
      status: RaspiGateLightStatus.allow,
    );

    await raspiGateControlClient.setGateState(state: RaspiGateState.open);
  }

  Future<void> _warnCloseGate() async {
    await raspiGateControlClient.makeSound(
      frequency: 600,
      duration: 0.5,
    );
  }

  Future<void> _closeGate() async {
    await raspiGateControlClient.setGateState(state: RaspiGateState.close);
    await raspiGateControlClient.setScreenText(text: '');
  }

  Future<void> startProccess() async {
    if (_isProcessing) {
      _log('Đang bận xử lý, vui lòng chờ...');
      return;
    }

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

      // Wait screen stablize
      await Future.delayed(const Duration(milliseconds: 500));

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

@riverpod
AutoGateService autoGateService(AutoGateServiceRef ref) {
  final raspiGateControlClient = ref.watch(raspiGateControlClientProvider);
  final allowedLicensePlates = [
    '51F17812',
    '29A51796',
    '43A18650',
    '51H61687',
    '89A07379',
    '98A17339',
    '30G40304',
    '30A04180',
    '29D07881',
    '14A09290',
  ];

  final service = AutoGateService(
    ref: ref,
    allowedLicensePlates: allowedLicensePlates,
    raspiGateControlClient: raspiGateControlClient,
  );

  final sensorDistanceThreshold = ref
      .watch(settingsProvider.select((value) => value.sensorDistanceThreshold));

  ref.listen(raspiDistanceSensorValueStreamProvider, (previous, next) {
    switch (next) {
      // Auto capture image when distance sensor value is less than 10 cm
      case AsyncData(:final value)
          when value <= sensorDistanceThreshold && !service.isProcessing:
        service.startProccess();
    }
  });

  return service;
}
