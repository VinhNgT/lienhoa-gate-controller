import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/constants/app_sizes.dart';
import 'package:lienhoa_gate_controller/utils/context_extensions.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

@RoutePage()
class LogViewScreen extends HookConsumerWidget {
  const LogViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nhật ký'),
        actions: [
          FilledButton.tonalIcon(
            onPressed: () {},
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
      ),
    );
  }
}
