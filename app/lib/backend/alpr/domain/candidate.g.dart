// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidateImpl _$$CandidateImplFromJson(Map<String, dynamic> json) =>
    _$CandidateImpl(
      plate: json['plate'] as String?,
      confidence: (json['confidence'] as num?)?.toDouble(),
      matchestemplate: json['matchestemplate'] as bool?,
    );

Map<String, dynamic> _$$CandidateImplToJson(_$CandidateImpl instance) =>
    <String, dynamic>{
      'plate': instance.plate,
      'confidence': instance.confidence,
      'matchestemplate': instance.matchestemplate,
    };
