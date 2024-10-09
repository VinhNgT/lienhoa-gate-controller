import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/constants/app_sizes.dart';
import 'package:material_symbols_icons/symbols.dart';

class AllowedLicensePlatesField extends HookConsumerWidget {
  const AllowedLicensePlatesField({
    super.key,
    required this.field,
  });

  final FormFieldState<List<String>> field;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  labelText: 'Thêm biển số xe',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Ví dụ: 14A09290',
                ),
              ),
            ),
            const Gap(kSize_8),
            IconButton.filledTonal(
              icon: const Icon(Symbols.add),
              onPressed: () {
                final plate = textController.text
                    .trim()
                    .replaceAll('-', '')
                    .replaceAll('.', '');

                if (plate.isNotEmpty) {
                  field.didChange(field.value!..add(plate));
                  textController.clear();
                }
              },
            ),
          ],
        ),
        const Gap(kSize_8),
        const Text('Danh sách biển số xe được phép'),
        ListView(
          shrinkWrap: true,
          children: field.value!.map((plate) {
            return ListTile(
              title: Text(plate),
              trailing: IconButton(
                icon: const Icon(
                  Symbols.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  field.didChange(field.value!..remove(plate));
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
