import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/features/shared_preferences/share_preferences_provider.dart';

@immutable
abstract class BootstrapDelegate {
  const BootstrapDelegate();

  Future<void> setupServices(ProviderContainer container);
}

class ProductionBootstrapDelegate extends BootstrapDelegate {
  const ProductionBootstrapDelegate();

  @override
  Future<void> setupServices(ProviderContainer container) async {
    container.read(sharedPreferencesProvider);
  }
}

class TestBootstrapDelegate extends BootstrapDelegate {
  const TestBootstrapDelegate();

  @override
  Future<void> setupServices(ProviderContainer container) async {
    return;
  }
}
