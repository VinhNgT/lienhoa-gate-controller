import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_of_interest.freezed.dart';
part 'region_of_interest.g.dart';

@freezed
class RegionsOfInterest with _$RegionsOfInterest {
  const factory RegionsOfInterest({
    int? x,
    int? y,
    int? width,
    int? height,
  }) = _RegionsOfInterest;

  factory RegionsOfInterest.fromJson(Map<String, dynamic> json) =>
      _$RegionsOfInterestFromJson(json);
}
