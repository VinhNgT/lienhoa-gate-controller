import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lienhoa_gate_controller/constants/app_sizes.dart';
import 'package:lienhoa_gate_controller/features/settings/application/settings_providers.dart';
import 'package:lienhoa_gate_controller/features/settings/data/settings_repository.dart';
import 'package:lienhoa_gate_controller/features/settings/domain/settings.dart';
import 'package:lienhoa_gate_controller/utils/list_extention.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useRef(GlobalKey<FormBuilderState>()).value;
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cài đặt'),
        actions: [
          OutlinedButton.icon(
            icon: const Icon(Symbols.save),
            label: const Text('Lưu'),
            onPressed: () async {
              if (!formKey.currentState!.saveAndValidate()) {
                return;
              }

              final settings = Settings.fromJson(formKey.currentState!.value);
              debugPrint('Settings: $settings');

              await ref.read(settingsRepositoryProvider).saveSettings(settings);
            },
          ),
          const Gap(kSize_8),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kSize_8,
            horizontal: kSize_12,
          ),
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: <Widget>[
                FormBuilderTextField(
                  name: SettingsRepository.raspiAddressKey,
                  decoration: const InputDecoration(
                    labelText: 'Địa chỉ Raspberry Pi',
                    hintText: 'Mặc định: raspberrypi',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  initialValue: settings.raspiAddress,
                ),
                FormBuilderTextField(
                  name: SettingsRepository.alprAddressKey,
                  decoration: const InputDecoration(
                    labelText: 'Địa chỉ ALPR',
                    hintText: 'Mặc định: localhost',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  initialValue: settings.alprAddress,
                ),
                FormBuilderSlider(
                  name: SettingsRepository.sensorDistanceThresholdKey,
                  min: 2,
                  max: 20,
                  initialValue: settings.sensorDistanceThreshold,
                  numberFormat:
                      NumberFormat.decimalPatternDigits(decimalDigits: 1),
                  valueTransformer: (value) =>
                      double.parse((value as double).toStringAsFixed(1)),
                  displayValues: DisplayValues.all,
                  decoration: const InputDecoration(
                    labelText: 'Ngưỡng cảm biến khoảng cách (cm)',
                    hintText: 'Mặc định: 10',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ].separated(const Gap(kSize_20)),
            ),
          ),
        ),
      ),
    );
  }
}
