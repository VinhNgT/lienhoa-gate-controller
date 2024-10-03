import 'package:flutter/material.dart';
import 'package:lienhoa_gate_controller/bootstrap/bootstrap.dart';
import 'package:lienhoa_gate_controller/bootstrap/bootstrap_delegate.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    title: "Cổng tự động Liên Hoà Controller",
    size: Size(1280, 720),
    center: true,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  const bootstrap = Bootstrap(ProductionBootstrapDelegate());
  final app = await bootstrap.initApp();
  runApp(app);
}
