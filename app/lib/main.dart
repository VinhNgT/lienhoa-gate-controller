import 'package:flutter/material.dart';
import 'package:lienhoa_gate_controller/bootstrap/bootstrap.dart';
import 'package:lienhoa_gate_controller/bootstrap/bootstrap_delegate.dart';
import 'package:media_kit/media_kit.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  await windowManager.ensureInitialized();

  const WindowOptions windowOptions = WindowOptions(
    title: 'Cổng tự động Liên Hoà Controller',
    size: Size(1280, 720),
    center: true,
  );

  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    // await windowManager.focus();
  });

  const bootstrap = Bootstrap(ProductionBootstrapDelegate());
  final app = await bootstrap.initApp();
  runApp(app);
}
