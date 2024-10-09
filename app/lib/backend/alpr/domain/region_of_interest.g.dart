// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_of_interest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionsOfInterestImpl _$$RegionsOfInterestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegionsOfInterestImpl(
      x: (json['x'] as num?)?.toInt(),
      y: (json['y'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegionsOfInterestImplToJson(
        _$RegionsOfInterestImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };
