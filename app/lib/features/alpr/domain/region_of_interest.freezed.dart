// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_of_interest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionsOfInterest _$RegionsOfInterestFromJson(Map<String, dynamic> json) {
  return _RegionsOfInterest.fromJson(json);
}

/// @nodoc
mixin _$RegionsOfInterest {
  int? get x => throw _privateConstructorUsedError;
  int? get y => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionsOfInterestCopyWith<RegionsOfInterest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionsOfInterestCopyWith<$Res> {
  factory $RegionsOfInterestCopyWith(
          RegionsOfInterest value, $Res Function(RegionsOfInterest) then) =
      _$RegionsOfInterestCopyWithImpl<$Res, RegionsOfInterest>;
  @useResult
  $Res call({int? x, int? y, int? width, int? height});
}

/// @nodoc
class _$RegionsOfInterestCopyWithImpl<$Res, $Val extends RegionsOfInterest>
    implements $RegionsOfInterestCopyWith<$Res> {
  _$RegionsOfInterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionsOfInterestImplCopyWith<$Res>
    implements $RegionsOfInterestCopyWith<$Res> {
  factory _$$RegionsOfInterestImplCopyWith(_$RegionsOfInterestImpl value,
          $Res Function(_$RegionsOfInterestImpl) then) =
      __$$RegionsOfInterestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? x, int? y, int? width, int? height});
}

/// @nodoc
class __$$RegionsOfInterestImplCopyWithImpl<$Res>
    extends _$RegionsOfInterestCopyWithImpl<$Res, _$RegionsOfInterestImpl>
    implements _$$RegionsOfInterestImplCopyWith<$Res> {
  __$$RegionsOfInterestImplCopyWithImpl(_$RegionsOfInterestImpl _value,
      $Res Function(_$RegionsOfInterestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$RegionsOfInterestImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionsOfInterestImpl implements _RegionsOfInterest {
  const _$RegionsOfInterestImpl({this.x, this.y, this.width, this.height});

  factory _$RegionsOfInterestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionsOfInterestImplFromJson(json);

  @override
  final int? x;
  @override
  final int? y;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'RegionsOfInterest(x: $x, y: $y, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionsOfInterestImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionsOfInterestImplCopyWith<_$RegionsOfInterestImpl> get copyWith =>
      __$$RegionsOfInterestImplCopyWithImpl<_$RegionsOfInterestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionsOfInterestImplToJson(
      this,
    );
  }
}

abstract class _RegionsOfInterest implements RegionsOfInterest {
  const factory _RegionsOfInterest(
      {final int? x,
      final int? y,
      final int? width,
      final int? height}) = _$RegionsOfInterestImpl;

  factory _RegionsOfInterest.fromJson(Map<String, dynamic> json) =
      _$RegionsOfInterestImpl.fromJson;

  @override
  int? get x;
  @override
  int? get y;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$RegionsOfInterestImplCopyWith<_$RegionsOfInterestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
