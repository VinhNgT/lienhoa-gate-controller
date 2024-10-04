import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useInitState(VoidCallback callback) {
  use(_UseInitStateHook(callback));
}

class _UseInitStateHook extends Hook<void> {
  const _UseInitStateHook(this.callback);
  final VoidCallback callback;

  @override
  HookState<void, Hook<void>> createState() => _UseInitStateHookState();
}

class _UseInitStateHookState extends HookState<void, _UseInitStateHook> {
  @override
  void initHook() {
    super.initHook();
    hook.callback();
  }

  @override
  void build(BuildContext context) {}
}
