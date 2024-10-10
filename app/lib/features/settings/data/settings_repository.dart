import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/backend/shared_preferences/share_preferences_provider.dart';
import 'package:lienhoa_gate_controller/features/settings/application/settings_providers.dart';
import 'package:lienhoa_gate_controller/features/settings/domain/camera_settings.dart';
import 'package:lienhoa_gate_controller/features/settings/domain/settings.dart';
import 'package:lienhoa_gate_controller/utils/json_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_repository.g.dart';

class SettingsRepository {
  SettingsRepository({
    required this.prefs,
    required this.container,
  });

  final SharedPreferences prefs;
  final ProviderContainer container;

  final _defaultSettingsJson = const Settings(
    raspiAddress: 'raspberrypi',
    alprAddress: 'localhost',
    cameraSettings: CameraSettings(
      videoStreamAddress: '***REMOVED***:554/ch1/main',
      videoStreamUser: 'admin',
      videoStreamPassword: 'Default0',
    ),
    sensorDistanceThreshold: 10,
    allowedLicensePlates: [
      '51F17812',
      '29A51796',
      '43A18650',
      '51H61687',
      '89A07379',
      '98A17339',
      '30G40304',
      '30A04180',
      '29D07881',
      '14A09290',
    ],
  ).toJson();

  Settings getSettings() {
    final savedSettingsJson =
        jsonDecode(prefs.getString('settingsJson') ?? '{}')
            as Map<String, dynamic>;

    final mergedJson =
        JsonUtils.deepMerge(_defaultSettingsJson, savedSettingsJson);

    return Settings.fromJson(mergedJson);
  }

  Future<void> saveSettings(Settings settings) async {
    await prefs.setString('settingsJson', jsonEncode(settings.toJson()));
    container.invalidate(settingsProvider);
  }

  Future<void> resetSettings() async {
    await prefs.remove('settingsJson');
    container.invalidate(settingsProvider);
  }
}

@riverpod
SettingsRepository settingsRepository(SettingsRepositoryRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider).requireValue;

  return SettingsRepository(
    prefs: prefs,
    container: ref.container,
  );
}
