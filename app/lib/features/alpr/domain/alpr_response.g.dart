// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alpr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlprResponseImpl _$$AlprResponseImplFromJson(Map<String, dynamic> json) =>
    _$AlprResponseImpl(
      version: (json['version'] as num?)?.toInt(),
      datatype: json['datatype'] as String?,
      epochtime: (json['epochtime'] as num?)?.toInt(),
      imgwidth: (json['imgwidth'] as num?)?.toInt(),
      imgheight: (json['imgheight'] as num?)?.toInt(),
      processingtimems: (json['processingtimems'] as num?)?.toDouble(),
      regionsofinterest: (json['regionsofinterest'] as List<dynamic>?)
          ?.map((e) => RegionsOfInterest.fromJson(e as Map<String, dynamic>))
          .toList(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlprResponseImplToJson(_$AlprResponseImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'datatype': instance.datatype,
      'epochtime': instance.epochtime,
      'imgwidth': instance.imgwidth,
      'imgheight': instance.imgheight,
      'processingtimems': instance.processingtimems,
      'regionsofinterest':
          instance.regionsofinterest?.map((e) => e.toJson()).toList(),
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };
