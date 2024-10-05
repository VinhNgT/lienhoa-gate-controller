// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get plate => throw _privateConstructorUsedError;
  double? get confidence => throw _privateConstructorUsedError;
  bool? get matchestemplate => throw _privateConstructorUsedError;
  int? get plateindex => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  int? get regionconfidence => throw _privateConstructorUsedError;
  double? get processingtimems => throw _privateConstructorUsedError;
  int? get requestedtopn => throw _privateConstructorUsedError;
  List<Coordinate>? get coordinates => throw _privateConstructorUsedError;
  List<Candidate>? get candidates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? plate,
      double? confidence,
      bool? matchestemplate,
      int? plateindex,
      String? region,
      int? regionconfidence,
      double? processingtimems,
      int? requestedtopn,
      List<Coordinate>? coordinates,
      List<Candidate>? candidates});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plate = freezed,
    Object? confidence = freezed,
    Object? matchestemplate = freezed,
    Object? plateindex = freezed,
    Object? region = freezed,
    Object? regionconfidence = freezed,
    Object? processingtimems = freezed,
    Object? requestedtopn = freezed,
    Object? coordinates = freezed,
    Object? candidates = freezed,
  }) {
    return _then(_value.copyWith(
      plate: freezed == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence: freezed == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double?,
      matchestemplate: freezed == matchestemplate
          ? _value.matchestemplate
          : matchestemplate // ignore: cast_nullable_to_non_nullable
              as bool?,
      plateindex: freezed == plateindex
          ? _value.plateindex
          : plateindex // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      regionconfidence: freezed == regionconfidence
          ? _value.regionconfidence
          : regionconfidence // ignore: cast_nullable_to_non_nullable
              as int?,
      processingtimems: freezed == processingtimems
          ? _value.processingtimems
          : processingtimems // ignore: cast_nullable_to_non_nullable
              as double?,
      requestedtopn: freezed == requestedtopn
          ? _value.requestedtopn
          : requestedtopn // ignore: cast_nullable_to_non_nullable
              as int?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>?,
      candidates: freezed == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? plate,
      double? confidence,
      bool? matchestemplate,
      int? plateindex,
      String? region,
      int? regionconfidence,
      double? processingtimems,
      int? requestedtopn,
      List<Coordinate>? coordinates,
      List<Candidate>? candidates});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plate = freezed,
    Object? confidence = freezed,
    Object? matchestemplate = freezed,
    Object? plateindex = freezed,
    Object? region = freezed,
    Object? regionconfidence = freezed,
    Object? processingtimems = freezed,
    Object? requestedtopn = freezed,
    Object? coordinates = freezed,
    Object? candidates = freezed,
  }) {
    return _then(_$ResultImpl(
      plate: freezed == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence: freezed == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double?,
      matchestemplate: freezed == matchestemplate
          ? _value.matchestemplate
          : matchestemplate // ignore: cast_nullable_to_non_nullable
              as bool?,
      plateindex: freezed == plateindex
          ? _value.plateindex
          : plateindex // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      regionconfidence: freezed == regionconfidence
          ? _value.regionconfidence
          : regionconfidence // ignore: cast_nullable_to_non_nullable
              as int?,
      processingtimems: freezed == processingtimems
          ? _value.processingtimems
          : processingtimems // ignore: cast_nullable_to_non_nullable
              as double?,
      requestedtopn: freezed == requestedtopn
          ? _value.requestedtopn
          : requestedtopn // ignore: cast_nullable_to_non_nullable
              as int?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>?,
      candidates: freezed == candidates
          ? _value._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl with DiagnosticableTreeMixin implements _Result {
  const _$ResultImpl(
      {this.plate,
      this.confidence,
      this.matchestemplate,
      this.plateindex,
      this.region,
      this.regionconfidence,
      this.processingtimems,
      this.requestedtopn,
      final List<Coordinate>? coordinates,
      final List<Candidate>? candidates})
      : _coordinates = coordinates,
        _candidates = candidates;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? plate;
  @override
  final double? confidence;
  @override
  final bool? matchestemplate;
  @override
  final int? plateindex;
  @override
  final String? region;
  @override
  final int? regionconfidence;
  @override
  final double? processingtimems;
  @override
  final int? requestedtopn;
  final List<Coordinate>? _coordinates;
  @override
  List<Coordinate>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Candidate>? _candidates;
  @override
  List<Candidate>? get candidates {
    final value = _candidates;
    if (value == null) return null;
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result(plate: $plate, confidence: $confidence, matchestemplate: $matchestemplate, plateindex: $plateindex, region: $region, regionconfidence: $regionconfidence, processingtimems: $processingtimems, requestedtopn: $requestedtopn, coordinates: $coordinates, candidates: $candidates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result'))
      ..add(DiagnosticsProperty('plate', plate))
      ..add(DiagnosticsProperty('confidence', confidence))
      ..add(DiagnosticsProperty('matchestemplate', matchestemplate))
      ..add(DiagnosticsProperty('plateindex', plateindex))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('regionconfidence', regionconfidence))
      ..add(DiagnosticsProperty('processingtimems', processingtimems))
      ..add(DiagnosticsProperty('requestedtopn', requestedtopn))
      ..add(DiagnosticsProperty('coordinates', coordinates))
      ..add(DiagnosticsProperty('candidates', candidates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.plate, plate) || other.plate == plate) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.matchestemplate, matchestemplate) ||
                other.matchestemplate == matchestemplate) &&
            (identical(other.plateindex, plateindex) ||
                other.plateindex == plateindex) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.regionconfidence, regionconfidence) ||
                other.regionconfidence == regionconfidence) &&
            (identical(other.processingtimems, processingtimems) ||
                other.processingtimems == processingtimems) &&
            (identical(other.requestedtopn, requestedtopn) ||
                other.requestedtopn == requestedtopn) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      plate,
      confidence,
      matchestemplate,
      plateindex,
      region,
      regionconfidence,
      processingtimems,
      requestedtopn,
      const DeepCollectionEquality().hash(_coordinates),
      const DeepCollectionEquality().hash(_candidates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? plate,
      final double? confidence,
      final bool? matchestemplate,
      final int? plateindex,
      final String? region,
      final int? regionconfidence,
      final double? processingtimems,
      final int? requestedtopn,
      final List<Coordinate>? coordinates,
      final List<Candidate>? candidates}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get plate;
  @override
  double? get confidence;
  @override
  bool? get matchestemplate;
  @override
  int? get plateindex;
  @override
  String? get region;
  @override
  int? get regionconfidence;
  @override
  double? get processingtimems;
  @override
  int? get requestedtopn;
  @override
  List<Coordinate>? get coordinates;
  @override
  List<Candidate>? get candidates;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
