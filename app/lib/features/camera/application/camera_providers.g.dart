// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cameraPlayerHash() => r'c8893431a893d0339a7aff38646b412b8c837455';

/// See also [cameraPlayer].
@ProviderFor(cameraPlayer)
final cameraPlayerProvider = AutoDisposeProvider<Player>.internal(
  cameraPlayer,
  name: r'cameraPlayerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cameraPlayerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CameraPlayerRef = AutoDisposeProviderRef<Player>;
String _$capturedCameraImageHash() =>
    r'16fdf7261e6b1bff4a62488bf25a7c18ec11a4f9';

/// See also [CapturedCameraImage].
@ProviderFor(CapturedCameraImage)
final capturedCameraImageProvider =
    NotifierProvider<CapturedCameraImage, Uint8List?>.internal(
  CapturedCameraImage.new,
  name: r'capturedCameraImageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$capturedCameraImageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CapturedCameraImage = Notifier<Uint8List?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
