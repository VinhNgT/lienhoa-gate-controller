import 'package:lienhoa_gate_controller/features/raspi_gate/data/raspi_gate_control_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'raspi_gate_control_providers.g.dart';

@riverpod
Stream<int> raspiDistanceSensorValueStream(
  RaspiDistanceSensorValueStreamRef ref,
) {
  final client = ref.watch(raspiGateControlClientProvider);

  return Stream.periodic(const Duration(seconds: 1), (_) {
    return client.getDistanceSensorValue();
  }).asyncMap((event) => event);
}
