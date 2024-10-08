import 'dart:async';

import 'package:lienhoa_gate_controller/features/raspi_gate/data/raspi_gate_control_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'raspi_gate_control_providers.g.dart';

/// Return the distance sensor value from the Raspberry Pi in cm.
@riverpod
class RaspiDistanceSensorValueStream extends _$RaspiDistanceSensorValueStream {
  late StreamController<int> _controller;
  late StreamSubscription<int> __valueStreamSub;

  @override
  Stream<int> build() {
    final client = ref.watch(raspiGateControlClientProvider);
    _controller = StreamController<int>();

    __valueStreamSub = Stream.periodic(const Duration(seconds: 1), (_) {
      return client.getDistanceSensorValue();
    }).asyncMap((event) => event).listen((event) {
      _controller.add(event);
    });

    ref.onDispose(() {
      __valueStreamSub.cancel();
      _controller.close();
    });

    return _controller.stream;
  }

  void pause() {
    __valueStreamSub.pause();
  }

  void resume() {
    __valueStreamSub.resume();
  }
}
