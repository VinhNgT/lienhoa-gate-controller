import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_gate_controller_state.freezed.dart';
part 'auto_gate_controller_state.g.dart';

@freezed
class AutoGateControllerState with _$AutoGateControllerState {
  const factory AutoGateControllerState({
    @Default(false) bool isProcessing,
  }) = _AutoGateControllerState;

  factory AutoGateControllerState.fromJson(Map<String, dynamic> json) =>
      _$AutoGateControllerStateFromJson(json);
}
