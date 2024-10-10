// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CameraSettings _$CameraSettingsFromJson(Map<String, dynamic> json) {
  return _CameraSettings.fromJson(json);
}

/// @nodoc
mixin _$CameraSettings {
  String? get videoStreamAddress => throw _privateConstructorUsedError;
  String? get videoStreamUser => throw _privateConstructorUsedError;
  String? get videoStreamPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CameraSettingsCopyWith<CameraSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraSettingsCopyWith<$Res> {
  factory $CameraSettingsCopyWith(
          CameraSettings value, $Res Function(CameraSettings) then) =
      _$CameraSettingsCopyWithImpl<$Res, CameraSettings>;
  @useResult
  $Res call(
      {String? videoStreamAddress,
      String? videoStreamUser,
      String? videoStreamPassword});
}

/// @nodoc
class _$CameraSettingsCopyWithImpl<$Res, $Val extends CameraSettings>
    implements $CameraSettingsCopyWith<$Res> {
  _$CameraSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoStreamAddress = freezed,
    Object? videoStreamUser = freezed,
    Object? videoStreamPassword = freezed,
  }) {
    return _then(_value.copyWith(
      videoStreamAddress: freezed == videoStreamAddress
          ? _value.videoStreamAddress
          : videoStreamAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      videoStreamUser: freezed == videoStreamUser
          ? _value.videoStreamUser
          : videoStreamUser // ignore: cast_nullable_to_non_nullable
              as String?,
      videoStreamPassword: freezed == videoStreamPassword
          ? _value.videoStreamPassword
          : videoStreamPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraSettingsImplCopyWith<$Res>
    implements $CameraSettingsCopyWith<$Res> {
  factory _$$CameraSettingsImplCopyWith(_$CameraSettingsImpl value,
          $Res Function(_$CameraSettingsImpl) then) =
      __$$CameraSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? videoStreamAddress,
      String? videoStreamUser,
      String? videoStreamPassword});
}

/// @nodoc
class __$$CameraSettingsImplCopyWithImpl<$Res>
    extends _$CameraSettingsCopyWithImpl<$Res, _$CameraSettingsImpl>
    implements _$$CameraSettingsImplCopyWith<$Res> {
  __$$CameraSettingsImplCopyWithImpl(
      _$CameraSettingsImpl _value, $Res Function(_$CameraSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoStreamAddress = freezed,
    Object? videoStreamUser = freezed,
    Object? videoStreamPassword = freezed,
  }) {
    return _then(_$CameraSettingsImpl(
      videoStreamAddress: freezed == videoStreamAddress
          ? _value.videoStreamAddress
          : videoStreamAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      videoStreamUser: freezed == videoStreamUser
          ? _value.videoStreamUser
          : videoStreamUser // ignore: cast_nullable_to_non_nullable
              as String?,
      videoStreamPassword: freezed == videoStreamPassword
          ? _value.videoStreamPassword
          : videoStreamPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CameraSettingsImpl implements _CameraSettings {
  const _$CameraSettingsImpl(
      {this.videoStreamAddress,
      this.videoStreamUser,
      this.videoStreamPassword});

  factory _$CameraSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CameraSettingsImplFromJson(json);

  @override
  final String? videoStreamAddress;
  @override
  final String? videoStreamUser;
  @override
  final String? videoStreamPassword;

  @override
  String toString() {
    return 'CameraSettings(videoStreamAddress: $videoStreamAddress, videoStreamUser: $videoStreamUser, videoStreamPassword: $videoStreamPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraSettingsImpl &&
            (identical(other.videoStreamAddress, videoStreamAddress) ||
                other.videoStreamAddress == videoStreamAddress) &&
            (identical(other.videoStreamUser, videoStreamUser) ||
                other.videoStreamUser == videoStreamUser) &&
            (identical(other.videoStreamPassword, videoStreamPassword) ||
                other.videoStreamPassword == videoStreamPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, videoStreamAddress, videoStreamUser, videoStreamPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraSettingsImplCopyWith<_$CameraSettingsImpl> get copyWith =>
      __$$CameraSettingsImplCopyWithImpl<_$CameraSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CameraSettingsImplToJson(
      this,
    );
  }
}

abstract class _CameraSettings implements CameraSettings {
  const factory _CameraSettings(
      {final String? videoStreamAddress,
      final String? videoStreamUser,
      final String? videoStreamPassword}) = _$CameraSettingsImpl;

  factory _CameraSettings.fromJson(Map<String, dynamic> json) =
      _$CameraSettingsImpl.fromJson;

  @override
  String? get videoStreamAddress;
  @override
  String? get videoStreamUser;
  @override
  String? get videoStreamPassword;
  @override
  @JsonKey(ignore: true)
  _$$CameraSettingsImplCopyWith<_$CameraSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
