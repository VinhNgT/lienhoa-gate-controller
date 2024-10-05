import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lienhoa_gate_controller/features/alpr/domain/candidate.dart';
import 'package:lienhoa_gate_controller/features/alpr/domain/coordinate.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    String? plate,
    double? confidence,
    bool? matchestemplate,
    int? plateindex,
    String? region,
    int? regionconfidence,
    double? processingtimems,
    int? requestedtopn,
    List<Coordinate>? coordinates,
    List<Candidate>? candidates,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
