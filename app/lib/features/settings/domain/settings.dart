import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lienhoa_gate_controller/features/settings/domain/camera_settings.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    String? raspiAddress,
    String? alprAddress,
    CameraSettings? cameraSettings,
    double? sensorDistanceThreshold,
    List<String>? allowedLicensePlates,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
