import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

/// A [LogOutput] implementation that outputs log messages to the console based
/// on the specified log level.
class LevelConsoleOutput extends LogOutput {
  LevelConsoleOutput(this.level);

  /// The log level to filter log messages.
  final Level level;

  @override
  void output(OutputEvent event) {
    if (event.level.value >= level.value) {
      event.lines.forEach(debugPrint);
    }
  }
}
