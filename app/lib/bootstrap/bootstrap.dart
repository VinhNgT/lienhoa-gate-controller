import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/app.dart';
import 'package:lienhoa_gate_controller/bootstrap/bootstrap_delegate.dart';
import 'package:lienhoa_gate_controller/exceptions/app_error_widget.dart';
import 'package:lienhoa_gate_controller/logging/async_error_logger.dart';
import 'package:lienhoa_gate_controller/logging/error_logger.dart';
import 'package:lienhoa_gate_controller/logging/logger_provider.dart';

class Bootstrap {
  const Bootstrap(this.delegate);
  final BootstrapDelegate delegate;

  Future<UncontrolledProviderScope> initApp() async {
    final container = ProviderContainer();

    setupErrorHandlers(container);
    await delegate.setupServices(container);

    return UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    );
  }

  void setupErrorHandlers(ProviderContainer container) {
    final appErrorLogger = ErrorLogger(container.read(loggerProvider));
    const showDetailedError = true;

    // Log all Riverpod asynchronous errors
    container.observers.addAll([
      AsyncErrorLogger(appErrorLogger),
    ]);

    // Show some error UI if any uncaught exception happens
    FlutterError.onError = (FlutterErrorDetails details) {
      Future(() async {
        FlutterError.presentError(details);
        // Wait for the before command to finish
        await Future.delayed(Duration.zero);
        appErrorLogger.log(
          'Flutter error',
          error: details.exception,
          stackTrace: details.stack,
        );
      });
    };

    // Handle errors from the underlying platform/OS
    PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
      appErrorLogger.log('Platform error', error: error, stackTrace: stack);
      return true;
    };

    // Show some error UI when any widget in the app fails to build
    ErrorWidget.builder = (FlutterErrorDetails details) {
      final error = details.exception is FlutterError
          ? details.exception as FlutterError
          : null;

      return showDetailedError
          ? ErrorWidget.withDetails(
              message: details.exceptionAsString(),
              error: error,
            )
          // ignore: dead_code
          : const AppErrorWidget();
    };
  }
}
