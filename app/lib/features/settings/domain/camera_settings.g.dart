// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CameraSettingsImpl _$$CameraSettingsImplFromJson(Map<String, dynamic> json) =>
    _$CameraSettingsImpl(
      videoStreamAddress: json['videoStreamAddress'] as String?,
      videoStreamUser: json['videoStreamUser'] as String?,
      videoStreamPassword: json['videoStreamPassword'] as String?,
    );

Map<String, dynamic> _$$CameraSettingsImplToJson(
        _$CameraSettingsImpl instance) =>
    <String, dynamic>{
      'videoStreamAddress': instance.videoStreamAddress,
      'videoStreamUser': instance.videoStreamUser,
      'videoStreamPassword': instance.videoStreamPassword,
    };
