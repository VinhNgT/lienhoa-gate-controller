import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lienhoa_gate_controller/backend/alpr/domain/region_of_interest.dart';
import 'package:lienhoa_gate_controller/backend/alpr/domain/result.dart';

part 'alpr_response.freezed.dart';
part 'alpr_response.g.dart';

@freezed
class AlprResponse with _$AlprResponse {
  const factory AlprResponse({
    int? version,
    String? datatype,
    int? epochtime,
    int? imgwidth,
    int? imgheight,
    double? processingtimems,
    List<RegionsOfInterest>? regionsofinterest,
    List<Result>? results,
  }) = _AlprResponse;

  factory AlprResponse.fromJson(Map<String, dynamic> json) =>
      _$AlprResponseFromJson(json);
}
