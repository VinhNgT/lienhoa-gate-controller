import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A hook that rebuilds the widget when the metrics change.
void useDidChangeMetricRebuild() {
  return use(const _DidChangeMetricRebuild());
}

class _DidChangeMetricRebuild extends Hook<void> {
  const _DidChangeMetricRebuild();

  @override
  _DidChangeMetricRebuildState createState() => _DidChangeMetricRebuildState();
}

class _DidChangeMetricRebuildState
    extends HookState<void, _DidChangeMetricRebuild>
    with WidgetsBindingObserver {
  @override
  void initHook() {
    super.initHook();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeMetrics() {
    setState(() {});
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
