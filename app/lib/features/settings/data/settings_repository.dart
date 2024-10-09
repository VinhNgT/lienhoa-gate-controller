import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/features/settings/application/settings_providers.dart';
import 'package:lienhoa_gate_controller/features/settings/domain/settings.dart';
import 'package:lienhoa_gate_controller/features/shared_preferences/share_preferences_provider.dart';
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

  static const raspiAddressKey = 'raspiAddress';
  static const alprAddressKey = 'alprAddress';
  static const sensorDistanceThresholdKey = 'sensorDistanceThreshold';

  Settings getSettings() {
    return Settings(
      raspiAddress: prefs.getString(raspiAddressKey) ?? 'raspberrypi',
      alprAddress: prefs.getString(alprAddressKey) ?? 'localhost',
      sensorDistanceThreshold:
          prefs.getDouble(sensorDistanceThresholdKey) ?? 10,
    );
  }

  Future<void> saveSettings(Settings settings) async {
    if (settings.raspiAddress.isEmpty) {
      await prefs.remove(raspiAddressKey);
    } else {
      await prefs.setString(raspiAddressKey, settings.raspiAddress);
    }

    if (settings.alprAddress.isEmpty) {
      await prefs.remove(alprAddressKey);
    } else {
      await prefs.setString(alprAddressKey, settings.alprAddress);
    }

    await prefs.setDouble(
      sensorDistanceThresholdKey,
      settings.sensorDistanceThreshold,
    );

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
