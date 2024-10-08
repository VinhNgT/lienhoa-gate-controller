// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_gate_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoGateControllerState _$AutoGateControllerStateFromJson(
    Map<String, dynamic> json) {
  return _AutoGateControllerState.fromJson(json);
}

/// @nodoc
mixin _$AutoGateControllerState {
  bool get isProcessing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoGateControllerStateCopyWith<AutoGateControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoGateControllerStateCopyWith<$Res> {
  factory $AutoGateControllerStateCopyWith(AutoGateControllerState value,
          $Res Function(AutoGateControllerState) then) =
      _$AutoGateControllerStateCopyWithImpl<$Res, AutoGateControllerState>;
  @useResult
  $Res call({bool isProcessing});
}

/// @nodoc
class _$AutoGateControllerStateCopyWithImpl<$Res,
        $Val extends AutoGateControllerState>
    implements $AutoGateControllerStateCopyWith<$Res> {
  _$AutoGateControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
  }) {
    return _then(_value.copyWith(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoGateControllerStateImplCopyWith<$Res>
    implements $AutoGateControllerStateCopyWith<$Res> {
  factory _$$AutoGateControllerStateImplCopyWith(
          _$AutoGateControllerStateImpl value,
          $Res Function(_$AutoGateControllerStateImpl) then) =
      __$$AutoGateControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isProcessing});
}

/// @nodoc
class __$$AutoGateControllerStateImplCopyWithImpl<$Res>
    extends _$AutoGateControllerStateCopyWithImpl<$Res,
        _$AutoGateControllerStateImpl>
    implements _$$AutoGateControllerStateImplCopyWith<$Res> {
  __$$AutoGateControllerStateImplCopyWithImpl(
      _$AutoGateControllerStateImpl _value,
      $Res Function(_$AutoGateControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
  }) {
    return _then(_$AutoGateControllerStateImpl(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoGateControllerStateImpl implements _AutoGateControllerState {
  const _$AutoGateControllerStateImpl({this.isProcessing = false});

  factory _$AutoGateControllerStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoGateControllerStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isProcessing;

  @override
  String toString() {
    return 'AutoGateControllerState(isProcessing: $isProcessing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoGateControllerStateImpl &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isProcessing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoGateControllerStateImplCopyWith<_$AutoGateControllerStateImpl>
      get copyWith => __$$AutoGateControllerStateImplCopyWithImpl<
          _$AutoGateControllerStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoGateControllerStateImplToJson(
      this,
    );
  }
}

abstract class _AutoGateControllerState implements AutoGateControllerState {
  const factory _AutoGateControllerState({final bool isProcessing}) =
      _$AutoGateControllerStateImpl;

  factory _AutoGateControllerState.fromJson(Map<String, dynamic> json) =
      _$AutoGateControllerStateImpl.fromJson;

  @override
  bool get isProcessing;
  @override
  @JsonKey(ignore: true)
  _$$AutoGateControllerStateImplCopyWith<_$AutoGateControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
