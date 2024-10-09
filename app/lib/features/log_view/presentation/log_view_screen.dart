import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/constants/app_sizes.dart';
import 'package:lienhoa_gate_controller/features/auto_gate/application/auto_gate_service.dart';
import 'package:lienhoa_gate_controller/features/log_view/application/log_view_providers.dart';
import 'package:lienhoa_gate_controller/utils/context_extensions.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

@RoutePage()
class LogViewScreen extends HookConsumerWidget {
  const LogViewScreen({super.key});

  final _logAnimationDuration = Durations.short2;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logs = ref.watch(logListDataThrottledProvider(_logAnimationDuration));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nhật ký'),
        actions: [
          FilledButton.tonalIcon(
            onPressed: () {
              ref.read(autoGateServiceProvider).startProccess();
            },
            icon: const Icon(Symbols.center_focus_strong),
            label: const Text('Xử lý ảnh hiện tại'),
          ),
          const Gap(kSize_8),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Symbols.settings),
            label: const Text('Cài đặt'),
          ),
          const Gap(kSize_8),
        ],
        // Disable scrolled under effects.
        notificationPredicate: (_) => false,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: kSize_8,
          right: kSize_8,
          bottom: kSize_8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colorScheme.outline,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(kSize_8),
        ),
        child: LogList(logs: logs, animationDuration: _logAnimationDuration),
      ),
    );
  }
}

class LogList extends HookConsumerWidget {
  const LogList({
    super.key,
    required this.logs,
    required this.animationDuration,
  });

  final List<String> logs;
  final Duration animationDuration;

  final _listSpacing = kSize_8;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listKey = useRef(GlobalKey<AnimatedListState>()).value;

    useValueChanged<List<String>, void>(logs, (oldValue, _) {
      listKey.currentState?.insertAllItems(
        0,
        logs.length - oldValue.length,
        duration: animationDuration,
      );
    });

    return AnimatedList(
      key: listKey,
      padding: const EdgeInsets.symmetric(horizontal: kSize_8),
      reverse: true,
      itemBuilder: (context, index, animation) {
        return SizeTransition(
          axisAlignment: -1,
          axis: Axis.vertical,
          sizeFactor: animation,
          child: Container(
            margin: EdgeInsets.only(
              top: index == logs.length - 1 ? _listSpacing : _listSpacing / 2,
              bottom: index == 0 ? _listSpacing : _listSpacing / 2,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(kSize_8),
            ),
            child: ListTile(
              title: Text(logs[index]),
            ),
          ),
        );
      },
    );
  }
}
