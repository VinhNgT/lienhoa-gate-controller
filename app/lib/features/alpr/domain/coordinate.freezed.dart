// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) {
  return _Coordinate.fromJson(json);
}

/// @nodoc
mixin _$Coordinate {
  int? get x => throw _privateConstructorUsedError;
  int? get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinateCopyWith<Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) then) =
      _$CoordinateCopyWithImpl<$Res, Coordinate>;
  @useResult
  $Res call({int? x, int? y});
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res, $Val extends Coordinate>
    implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinateImplCopyWith<$Res>
    implements $CoordinateCopyWith<$Res> {
  factory _$$CoordinateImplCopyWith(
          _$CoordinateImpl value, $Res Function(_$CoordinateImpl) then) =
      __$$CoordinateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? x, int? y});
}

/// @nodoc
class __$$CoordinateImplCopyWithImpl<$Res>
    extends _$CoordinateCopyWithImpl<$Res, _$CoordinateImpl>
    implements _$$CoordinateImplCopyWith<$Res> {
  __$$CoordinateImplCopyWithImpl(
      _$CoordinateImpl _value, $Res Function(_$CoordinateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$CoordinateImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinateImpl implements _Coordinate {
  const _$CoordinateImpl({this.x, this.y});

  factory _$CoordinateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinateImplFromJson(json);

  @override
  final int? x;
  @override
  final int? y;

  @override
  String toString() {
    return 'Coordinate(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinateImplCopyWith<_$CoordinateImpl> get copyWith =>
      __$$CoordinateImplCopyWithImpl<_$CoordinateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinateImplToJson(
      this,
    );
  }
}

abstract class _Coordinate implements Coordinate {
  const factory _Coordinate({final int? x, final int? y}) = _$CoordinateImpl;

  factory _Coordinate.fromJson(Map<String, dynamic> json) =
      _$CoordinateImpl.fromJson;

  @override
  int? get x;
  @override
  int? get y;
  @override
  @JsonKey(ignore: true)
  _$$CoordinateImplCopyWith<_$CoordinateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
