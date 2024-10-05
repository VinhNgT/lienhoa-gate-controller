// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alpr_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlprResponse _$AlprResponseFromJson(Map<String, dynamic> json) {
  return _AlprResponse.fromJson(json);
}

/// @nodoc
mixin _$AlprResponse {
  int? get version => throw _privateConstructorUsedError;
  String? get datatype => throw _privateConstructorUsedError;
  int? get epochtime => throw _privateConstructorUsedError;
  int? get imgwidth => throw _privateConstructorUsedError;
  int? get imgheight => throw _privateConstructorUsedError;
  double? get processingtimems => throw _privateConstructorUsedError;
  List<RegionsOfInterest>? get regionsofinterest =>
      throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlprResponseCopyWith<AlprResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlprResponseCopyWith<$Res> {
  factory $AlprResponseCopyWith(
          AlprResponse value, $Res Function(AlprResponse) then) =
      _$AlprResponseCopyWithImpl<$Res, AlprResponse>;
  @useResult
  $Res call(
      {int? version,
      String? datatype,
      int? epochtime,
      int? imgwidth,
      int? imgheight,
      double? processingtimems,
      List<RegionsOfInterest>? regionsofinterest,
      List<Result>? results});
}

/// @nodoc
class _$AlprResponseCopyWithImpl<$Res, $Val extends AlprResponse>
    implements $AlprResponseCopyWith<$Res> {
  _$AlprResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? datatype = freezed,
    Object? epochtime = freezed,
    Object? imgwidth = freezed,
    Object? imgheight = freezed,
    Object? processingtimems = freezed,
    Object? regionsofinterest = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      datatype: freezed == datatype
          ? _value.datatype
          : datatype // ignore: cast_nullable_to_non_nullable
              as String?,
      epochtime: freezed == epochtime
          ? _value.epochtime
          : epochtime // ignore: cast_nullable_to_non_nullable
              as int?,
      imgwidth: freezed == imgwidth
          ? _value.imgwidth
          : imgwidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imgheight: freezed == imgheight
          ? _value.imgheight
          : imgheight // ignore: cast_nullable_to_non_nullable
              as int?,
      processingtimems: freezed == processingtimems
          ? _value.processingtimems
          : processingtimems // ignore: cast_nullable_to_non_nullable
              as double?,
      regionsofinterest: freezed == regionsofinterest
          ? _value.regionsofinterest
          : regionsofinterest // ignore: cast_nullable_to_non_nullable
              as List<RegionsOfInterest>?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlprResponseImplCopyWith<$Res>
    implements $AlprResponseCopyWith<$Res> {
  factory _$$AlprResponseImplCopyWith(
          _$AlprResponseImpl value, $Res Function(_$AlprResponseImpl) then) =
      __$$AlprResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? version,
      String? datatype,
      int? epochtime,
      int? imgwidth,
      int? imgheight,
      double? processingtimems,
      List<RegionsOfInterest>? regionsofinterest,
      List<Result>? results});
}

/// @nodoc
class __$$AlprResponseImplCopyWithImpl<$Res>
    extends _$AlprResponseCopyWithImpl<$Res, _$AlprResponseImpl>
    implements _$$AlprResponseImplCopyWith<$Res> {
  __$$AlprResponseImplCopyWithImpl(
      _$AlprResponseImpl _value, $Res Function(_$AlprResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? datatype = freezed,
    Object? epochtime = freezed,
    Object? imgwidth = freezed,
    Object? imgheight = freezed,
    Object? processingtimems = freezed,
    Object? regionsofinterest = freezed,
    Object? results = freezed,
  }) {
    return _then(_$AlprResponseImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      datatype: freezed == datatype
          ? _value.datatype
          : datatype // ignore: cast_nullable_to_non_nullable
              as String?,
      epochtime: freezed == epochtime
          ? _value.epochtime
          : epochtime // ignore: cast_nullable_to_non_nullable
              as int?,
      imgwidth: freezed == imgwidth
          ? _value.imgwidth
          : imgwidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imgheight: freezed == imgheight
          ? _value.imgheight
          : imgheight // ignore: cast_nullable_to_non_nullable
              as int?,
      processingtimems: freezed == processingtimems
          ? _value.processingtimems
          : processingtimems // ignore: cast_nullable_to_non_nullable
              as double?,
      regionsofinterest: freezed == regionsofinterest
          ? _value._regionsofinterest
          : regionsofinterest // ignore: cast_nullable_to_non_nullable
              as List<RegionsOfInterest>?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlprResponseImpl with DiagnosticableTreeMixin implements _AlprResponse {
  const _$AlprResponseImpl(
      {this.version,
      this.datatype,
      this.epochtime,
      this.imgwidth,
      this.imgheight,
      this.processingtimems,
      final List<RegionsOfInterest>? regionsofinterest,
      final List<Result>? results})
      : _regionsofinterest = regionsofinterest,
        _results = results;

  factory _$AlprResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlprResponseImplFromJson(json);

  @override
  final int? version;
  @override
  final String? datatype;
  @override
  final int? epochtime;
  @override
  final int? imgwidth;
  @override
  final int? imgheight;
  @override
  final double? processingtimems;
  final List<RegionsOfInterest>? _regionsofinterest;
  @override
  List<RegionsOfInterest>? get regionsofinterest {
    final value = _regionsofinterest;
    if (value == null) return null;
    if (_regionsofinterest is EqualUnmodifiableListView)
      return _regionsofinterest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlprResponse(version: $version, datatype: $datatype, epochtime: $epochtime, imgwidth: $imgwidth, imgheight: $imgheight, processingtimems: $processingtimems, regionsofinterest: $regionsofinterest, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlprResponse'))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('datatype', datatype))
      ..add(DiagnosticsProperty('epochtime', epochtime))
      ..add(DiagnosticsProperty('imgwidth', imgwidth))
      ..add(DiagnosticsProperty('imgheight', imgheight))
      ..add(DiagnosticsProperty('processingtimems', processingtimems))
      ..add(DiagnosticsProperty('regionsofinterest', regionsofinterest))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlprResponseImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.datatype, datatype) ||
                other.datatype == datatype) &&
            (identical(other.epochtime, epochtime) ||
                other.epochtime == epochtime) &&
            (identical(other.imgwidth, imgwidth) ||
                other.imgwidth == imgwidth) &&
            (identical(other.imgheight, imgheight) ||
                other.imgheight == imgheight) &&
            (identical(other.processingtimems, processingtimems) ||
                other.processingtimems == processingtimems) &&
            const DeepCollectionEquality()
                .equals(other._regionsofinterest, _regionsofinterest) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      datatype,
      epochtime,
      imgwidth,
      imgheight,
      processingtimems,
      const DeepCollectionEquality().hash(_regionsofinterest),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlprResponseImplCopyWith<_$AlprResponseImpl> get copyWith =>
      __$$AlprResponseImplCopyWithImpl<_$AlprResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlprResponseImplToJson(
      this,
    );
  }
}

abstract class _AlprResponse implements AlprResponse {
  const factory _AlprResponse(
      {final int? version,
      final String? datatype,
      final int? epochtime,
      final int? imgwidth,
      final int? imgheight,
      final double? processingtimems,
      final List<RegionsOfInterest>? regionsofinterest,
      final List<Result>? results}) = _$AlprResponseImpl;

  factory _AlprResponse.fromJson(Map<String, dynamic> json) =
      _$AlprResponseImpl.fromJson;

  @override
  int? get version;
  @override
  String? get datatype;
  @override
  int? get epochtime;
  @override
  int? get imgwidth;
  @override
  int? get imgheight;
  @override
  double? get processingtimems;
  @override
  List<RegionsOfInterest>? get regionsofinterest;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$AlprResponseImplCopyWith<_$AlprResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
