import 'package:lienhoa_gate_controller/features/settings/data/settings_repository.dart';
import 'package:lienhoa_gate_controller/features/settings/domain/settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_providers.g.dart';

@riverpod
Settings settings(SettingsRef ref) {
  final repo = ref.watch(settingsRepositoryProvider);
  return repo.getSettings();
}
