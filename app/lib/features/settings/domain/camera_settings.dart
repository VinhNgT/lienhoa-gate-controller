import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_settings.freezed.dart';
part 'camera_settings.g.dart';

@freezed
class CameraSettings with _$CameraSettings {
  const factory CameraSettings({
    String? videoStreamAddress,
    String? videoStreamUser,
    String? videoStreamPassword,
  }) = _CameraSettings;

  factory CameraSettings.fromJson(Map<String, dynamic> json) =>
      _$CameraSettingsFromJson(json);
}
