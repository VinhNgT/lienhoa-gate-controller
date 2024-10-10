// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      raspiAddress: json['raspiAddress'] as String?,
      alprAddress: json['alprAddress'] as String?,
      cameraSettings: json['cameraSettings'] == null
          ? null
          : CameraSettings.fromJson(
              json['cameraSettings'] as Map<String, dynamic>),
      sensorDistanceThreshold:
          (json['sensorDistanceThreshold'] as num?)?.toDouble(),
      allowedLicensePlates: (json['allowedLicensePlates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'raspiAddress': instance.raspiAddress,
      'alprAddress': instance.alprAddress,
      'cameraSettings': instance.cameraSettings?.toJson(),
      'sensorDistanceThreshold': instance.sensorDistanceThreshold,
      'allowedLicensePlates': instance.allowedLicensePlates,
    };
