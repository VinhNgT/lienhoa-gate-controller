// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  String? get raspiAddress => throw _privateConstructorUsedError;
  String? get alprAddress => throw _privateConstructorUsedError;
  CameraSettings? get cameraSettings => throw _privateConstructorUsedError;
  double? get sensorDistanceThreshold => throw _privateConstructorUsedError;
  List<String>? get allowedLicensePlates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call(
      {String? raspiAddress,
      String? alprAddress,
      CameraSettings? cameraSettings,
      double? sensorDistanceThreshold,
      List<String>? allowedLicensePlates});

  $CameraSettingsCopyWith<$Res>? get cameraSettings;
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raspiAddress = freezed,
    Object? alprAddress = freezed,
    Object? cameraSettings = freezed,
    Object? sensorDistanceThreshold = freezed,
    Object? allowedLicensePlates = freezed,
  }) {
    return _then(_value.copyWith(
      raspiAddress: freezed == raspiAddress
          ? _value.raspiAddress
          : raspiAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      alprAddress: freezed == alprAddress
          ? _value.alprAddress
          : alprAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      cameraSettings: freezed == cameraSettings
          ? _value.cameraSettings
          : cameraSettings // ignore: cast_nullable_to_non_nullable
              as CameraSettings?,
      sensorDistanceThreshold: freezed == sensorDistanceThreshold
          ? _value.sensorDistanceThreshold
          : sensorDistanceThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      allowedLicensePlates: freezed == allowedLicensePlates
          ? _value.allowedLicensePlates
          : allowedLicensePlates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CameraSettingsCopyWith<$Res>? get cameraSettings {
    if (_value.cameraSettings == null) {
      return null;
    }

    return $CameraSettingsCopyWith<$Res>(_value.cameraSettings!, (value) {
      return _then(_value.copyWith(cameraSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsImplCopyWith<$Res>
    implements $SettingsCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? raspiAddress,
      String? alprAddress,
      CameraSettings? cameraSettings,
      double? sensorDistanceThreshold,
      List<String>? allowedLicensePlates});

  @override
  $CameraSettingsCopyWith<$Res>? get cameraSettings;
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raspiAddress = freezed,
    Object? alprAddress = freezed,
    Object? cameraSettings = freezed,
    Object? sensorDistanceThreshold = freezed,
    Object? allowedLicensePlates = freezed,
  }) {
    return _then(_$SettingsImpl(
      raspiAddress: freezed == raspiAddress
          ? _value.raspiAddress
          : raspiAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      alprAddress: freezed == alprAddress
          ? _value.alprAddress
          : alprAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      cameraSettings: freezed == cameraSettings
          ? _value.cameraSettings
          : cameraSettings // ignore: cast_nullable_to_non_nullable
              as CameraSettings?,
      sensorDistanceThreshold: freezed == sensorDistanceThreshold
          ? _value.sensorDistanceThreshold
          : sensorDistanceThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      allowedLicensePlates: freezed == allowedLicensePlates
          ? _value._allowedLicensePlates
          : allowedLicensePlates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl with DiagnosticableTreeMixin implements _Settings {
  const _$SettingsImpl(
      {this.raspiAddress,
      this.alprAddress,
      this.cameraSettings,
      this.sensorDistanceThreshold,
      final List<String>? allowedLicensePlates})
      : _allowedLicensePlates = allowedLicensePlates;

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  final String? raspiAddress;
  @override
  final String? alprAddress;
  @override
  final CameraSettings? cameraSettings;
  @override
  final double? sensorDistanceThreshold;
  final List<String>? _allowedLicensePlates;
  @override
  List<String>? get allowedLicensePlates {
    final value = _allowedLicensePlates;
    if (value == null) return null;
    if (_allowedLicensePlates is EqualUnmodifiableListView)
      return _allowedLicensePlates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Settings(raspiAddress: $raspiAddress, alprAddress: $alprAddress, cameraSettings: $cameraSettings, sensorDistanceThreshold: $sensorDistanceThreshold, allowedLicensePlates: $allowedLicensePlates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Settings'))
      ..add(DiagnosticsProperty('raspiAddress', raspiAddress))
      ..add(DiagnosticsProperty('alprAddress', alprAddress))
      ..add(DiagnosticsProperty('cameraSettings', cameraSettings))
      ..add(DiagnosticsProperty(
          'sensorDistanceThreshold', sensorDistanceThreshold))
      ..add(DiagnosticsProperty('allowedLicensePlates', allowedLicensePlates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.raspiAddress, raspiAddress) ||
                other.raspiAddress == raspiAddress) &&
            (identical(other.alprAddress, alprAddress) ||
                other.alprAddress == alprAddress) &&
            (identical(other.cameraSettings, cameraSettings) ||
                other.cameraSettings == cameraSettings) &&
            (identical(
                    other.sensorDistanceThreshold, sensorDistanceThreshold) ||
                other.sensorDistanceThreshold == sensorDistanceThreshold) &&
            const DeepCollectionEquality()
                .equals(other._allowedLicensePlates, _allowedLicensePlates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      raspiAddress,
      alprAddress,
      cameraSettings,
      sensorDistanceThreshold,
      const DeepCollectionEquality().hash(_allowedLicensePlates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsImplToJson(
      this,
    );
  }
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {final String? raspiAddress,
      final String? alprAddress,
      final CameraSettings? cameraSettings,
      final double? sensorDistanceThreshold,
      final List<String>? allowedLicensePlates}) = _$SettingsImpl;

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  String? get raspiAddress;
  @override
  String? get alprAddress;
  @override
  CameraSettings? get cameraSettings;
  @override
  double? get sensorDistanceThreshold;
  @override
  List<String>? get allowedLicensePlates;
  @override
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
