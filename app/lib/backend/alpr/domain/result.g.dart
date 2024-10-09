// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      plate: json['plate'] as String?,
      confidence: (json['confidence'] as num?)?.toDouble(),
      matchestemplate: json['matchestemplate'] as bool?,
      plateindex: (json['plateindex'] as num?)?.toInt(),
      region: json['region'] as String?,
      regionconfidence: (json['regionconfidence'] as num?)?.toInt(),
      processingtimems: (json['processingtimems'] as num?)?.toDouble(),
      requestedtopn: (json['requestedtopn'] as num?)?.toInt(),
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => Coordinate.fromJson(e as Map<String, dynamic>))
          .toList(),
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'plate': instance.plate,
      'confidence': instance.confidence,
      'matchestemplate': instance.matchestemplate,
      'plateindex': instance.plateindex,
      'region': instance.region,
      'regionconfidence': instance.regionconfidence,
      'processingtimems': instance.processingtimems,
      'requestedtopn': instance.requestedtopn,
      'coordinates': instance.coordinates?.map((e) => e.toJson()).toList(),
      'candidates': instance.candidates?.map((e) => e.toJson()).toList(),
    };
