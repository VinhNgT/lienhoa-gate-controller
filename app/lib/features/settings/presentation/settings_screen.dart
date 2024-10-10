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
import 'package:lienhoa_gate_controller/features/settings/presentation/components/allowed_license_plates_field.dart';
import 'package:lienhoa_gate_controller/utils/list_extention.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useRef(GlobalKey<FormBuilderState>()).value;
    final scaffoldMessengerKey =
        useRef(GlobalKey<ScaffoldMessengerState>()).value;
    final settings = ref.watch(settingsProvider);

    return ScaffoldMessenger(
      key: scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cài đặt'),
          actions: [
            TextButton.icon(
              icon: const Icon(Symbols.reset_wrench),
              label: const Text('Đặt lại mặc định'),
              onPressed: () {
                ref.read(settingsRepositoryProvider).resetSettings();

                WidgetsBinding.instance.addPostFrameCallback((_) {
                  formKey.currentState!.reset();
                  scaffoldMessengerKey.currentState!.showSnackBar(
                    const SnackBar(
                      content: Text('Đã đặt lại mặc định'),
                    ),
                  );
                });
              },
            ),
            const Gap(kSize_8),
            OutlinedButton.icon(
              icon: const Icon(Symbols.save),
              label: const Text('Lưu'),
              onPressed: () async {
                if (!formKey.currentState!.saveAndValidate()) {
                  return;
                }

                final settings = Settings.fromJson(formKey.currentState!.value);
                await ref
                    .read(settingsRepositoryProvider)
                    .saveSettings(settings);

                scaffoldMessengerKey.currentState!.showSnackBar(
                  const SnackBar(
                    content: Text('Đã lưu cài đặt'),
                  ),
                );
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
                    name: 'raspiAddress',
                    decoration: const InputDecoration(
                      labelText: 'Địa chỉ Raspberry Pi',
                      hintText: 'Mặc định: raspberrypi',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    initialValue: settings.raspiAddress,
                  ),
                  FormBuilderTextField(
                    name: 'alprAddress',
                    decoration: const InputDecoration(
                      labelText: 'Địa chỉ ALPR',
                      hintText: 'Mặc định: localhost',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    initialValue: settings.alprAddress,
                  ),
                  FormBuilderSlider(
                    name: 'sensorDistanceThreshold',
                    min: 2,
                    max: 20,
                    initialValue: settings.sensorDistanceThreshold!,
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
                  FormBuilderField(
                    name: 'allowedLicensePlates',
                    initialValue: settings.allowedLicensePlates,
                    builder: (FormFieldState<List<String>> field) =>
                        AllowedLicensePlatesField(field: field),
                  ),
                ].separated(const Gap(kSize_20)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
