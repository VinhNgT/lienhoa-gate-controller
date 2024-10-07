import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/constants/app_sizes.dart';
import 'package:lienhoa_gate_controller/features/alpr/data/alpr_client_providers.dart';
import 'package:lienhoa_gate_controller/features/camera/application/camera_providers.dart';
import 'package:lienhoa_gate_controller/utils/context_extensions.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

@RoutePage()
class LogViewScreen extends HookConsumerWidget {
  const LogViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logs = useState(<String>[]);

    ref.listen(alprCapturedImageLicensePlatesFutureProvider, (_, next) {
      if (next is AsyncData) {
        logs.value = [...logs.value, next.value.toString()];
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nhật ký'),
        actions: [
          FilledButton.tonalIcon(
            onPressed: () async {
              debugPrint('Capturing image');
              await ref.read(capturedCameraImageProvider.notifier).capture();
              debugPrint('Image captured');
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
        child: LogList(logs: logs.value),
      ),
    );
  }
}

class LogList extends HookConsumerWidget {
  const LogList({super.key, required this.logs});
  final List<String> logs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listKey = useRef(GlobalKey<AnimatedListState>()).value;

    useValueChanged<List<String>, void>(logs, (oldValue, _) {
      for (int i = 0; i < logs.length - oldValue.length; i++) {
        listKey.currentState?.insertItem(0);
      }
    });

    return AnimatedList(
      key: listKey,
      // reverse: true,
      // initialItemCount: logs.length,
      itemBuilder: (context, index, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(animation),
          child: ListTile(
            title: Text(logs[index]),
          ),
        );
      },
    );
  }
}
