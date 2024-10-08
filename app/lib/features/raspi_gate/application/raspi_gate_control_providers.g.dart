// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raspi_gate_control_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$raspiDistanceSensorValueStreamHash() =>
    r'103d33f3632df461f12d59b3fd9080a6324c47f8';

/// Return the distance sensor value from the Raspberry Pi in cm.
///
/// Copied from [raspiDistanceSensorValueStream].
@ProviderFor(raspiDistanceSensorValueStream)
final raspiDistanceSensorValueStreamProvider =
    AutoDisposeStreamProvider<int>.internal(
  raspiDistanceSensorValueStream,
  name: r'raspiDistanceSensorValueStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$raspiDistanceSensorValueStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RaspiDistanceSensorValueStreamRef = AutoDisposeStreamProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
