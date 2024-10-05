// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Camera {
  Player get player => throw _privateConstructorUsedError;
  Uint8List? get capturedImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraCopyWith<Camera> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraCopyWith<$Res> {
  factory $CameraCopyWith(Camera value, $Res Function(Camera) then) =
      _$CameraCopyWithImpl<$Res, Camera>;
  @useResult
  $Res call({Player player, Uint8List? capturedImage});
}

/// @nodoc
class _$CameraCopyWithImpl<$Res, $Val extends Camera>
    implements $CameraCopyWith<$Res> {
  _$CameraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? capturedImage = freezed,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      capturedImage: freezed == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraImplCopyWith<$Res> implements $CameraCopyWith<$Res> {
  factory _$$CameraImplCopyWith(
          _$CameraImpl value, $Res Function(_$CameraImpl) then) =
      __$$CameraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Player player, Uint8List? capturedImage});
}

/// @nodoc
class __$$CameraImplCopyWithImpl<$Res>
    extends _$CameraCopyWithImpl<$Res, _$CameraImpl>
    implements _$$CameraImplCopyWith<$Res> {
  __$$CameraImplCopyWithImpl(
      _$CameraImpl _value, $Res Function(_$CameraImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? capturedImage = freezed,
  }) {
    return _then(_$CameraImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      capturedImage: freezed == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$CameraImpl implements _Camera {
  const _$CameraImpl({required this.player, this.capturedImage});

  @override
  final Player player;
  @override
  final Uint8List? capturedImage;

  @override
  String toString() {
    return 'Camera(player: $player, capturedImage: $capturedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraImpl &&
            (identical(other.player, player) || other.player == player) &&
            const DeepCollectionEquality()
                .equals(other.capturedImage, capturedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, player, const DeepCollectionEquality().hash(capturedImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraImplCopyWith<_$CameraImpl> get copyWith =>
      __$$CameraImplCopyWithImpl<_$CameraImpl>(this, _$identity);
}

abstract class _Camera implements Camera {
  const factory _Camera(
      {required final Player player,
      final Uint8List? capturedImage}) = _$CameraImpl;

  @override
  Player get player;
  @override
  Uint8List? get capturedImage;
  @override
  @JsonKey(ignore: true)
  _$$CameraImplCopyWith<_$CameraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
