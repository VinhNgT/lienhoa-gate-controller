import 'package:dio/dio.dart';
import 'package:lienhoa_gate_controller/features/settings/application/settings_providers.dart';
import 'package:lienhoa_gate_controller/networking/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'raspi_gate_control_client.g.dart';

enum RaspiGateLightStatus {
  none('none'),
  carDetected('car_detected'),
  processing('processing'),
  allow('allow'),
  deny('deny');

  const RaspiGateLightStatus(this.apiName);
  final String apiName;
}

enum RaspiGateState { open, close }

class RaspiGateControlClient {
  const RaspiGateControlClient({required this.raspiDio});
  final Dio raspiDio;

  Future<void> setStatusLights({
    required RaspiGateLightStatus status,
    CancelToken? cancelToken,
  }) async {
    final _ = await raspiDio.patch(
      '/status_lights_state/',
      data: {'state': status.apiName},
      cancelToken: cancelToken,
    );
  }

  Future<void> setGateState({
    required RaspiGateState state,
    CancelToken? cancelToken,
  }) async {
    final _ = await raspiDio.patch(
      '/gate/',
      data: {'state': state.name},
      cancelToken: cancelToken,
    );
  }

  Future<void> setScreenText({
    required String text,
    CancelToken? cancelToken,
  }) async {
    final _ = await raspiDio.post(
      '/screen/',
      data: {'text': text},
      cancelToken: cancelToken,
    );
  }

  Future<void> makeSound({
    required int frequency,
    required double duration,
    CancelToken? cancelToken,
  }) async {
    final _ = await raspiDio.post(
      '/buzzer/',
      data: {'frequency': frequency, 'duration': duration},
      cancelToken: cancelToken,
    );
  }

  // Returns distance in cm
  Future<int> getDistanceSensorValue({CancelToken? cancelToken}) async {
    final response = await raspiDio.get(
      '/distance_sensor/',
      cancelToken: cancelToken,
    );

    return (response.data!['distance'] as double) ~/ 10;
  }
}

@riverpod
RaspiGateControlClient raspiGateControlClient(RaspiGateControlClientRef ref) {
  final raspiAddress =
      ref.watch(settingsProvider.select((value) => value.raspiAddress));

  final dio = ref.watch(dioProvider('http://$raspiAddress'));
  dio.options.contentType = Headers.formUrlEncodedContentType;

  return RaspiGateControlClient(raspiDio: dio);
}
