import 'package:dio/dio.dart';
import 'package:lienhoa_gate_controller/networking/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'raspi_gate_control_client.g.dart';

enum RaspiGateLightStatus { none, processing, allow, deny }

class RaspiGateControlClient {
  const RaspiGateControlClient({required this.raspiDio});
  final Dio raspiDio;

  Future<void> setStatusLights({
    required RaspiGateLightStatus status,
    CancelToken? cancelToken,
  }) async {
    final _ = await raspiDio.post(
      '/set_status_lights/',
      data: {'state': status.name},
      cancelToken: cancelToken,
    );
  }

  Future<void> setGateState({
    required bool isOpen,
    CancelToken? cancelToken,
  }) async {
    final _ = await raspiDio.post(
      '/set_gate_state/',
      data: {'state': isOpen},
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

  Future<void> makeSound({CancelToken? cancelToken}) async {
    final _ = await raspiDio.post(
      '/buzzer/',
      cancelToken: cancelToken,
    );
  }

  // Returns distance in cm
  Future<int> getDistanceSensorValue({CancelToken? cancelToken}) async {
    final response = await raspiDio.get(
      '/distance_sensor/',
      cancelToken: cancelToken,
    );

    return (response.data!['distance'] as double).toInt();
  }
}

@riverpod
RaspiGateControlClient raspiGateControlClient(RaspiGateControlClientRef ref) {
  final dio = ref.watch(dioProvider('http://raspberrypi'));
  dio.options.contentType = Headers.formUrlEncodedContentType;

  return RaspiGateControlClient(raspiDio: dio);
}
