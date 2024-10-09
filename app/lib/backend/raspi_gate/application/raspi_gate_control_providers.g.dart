// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raspi_gate_control_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$raspiDistanceSensorValueStreamHash() =>
    r'c9b9a77c16620c0facb9a0f2941a9c5b43d0fee1';

/// Return the distance sensor value from the Raspberry Pi in cm.
///
/// Copied from [RaspiDistanceSensorValueStream].
@ProviderFor(RaspiDistanceSensorValueStream)
final raspiDistanceSensorValueStreamProvider =
    AutoDisposeStreamNotifierProvider<RaspiDistanceSensorValueStream,
        int>.internal(
  RaspiDistanceSensorValueStream.new,
  name: r'raspiDistanceSensorValueStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$raspiDistanceSensorValueStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RaspiDistanceSensorValueStream = AutoDisposeStreamNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
