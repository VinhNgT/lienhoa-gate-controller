import 'package:logger/logger.dart';

class LowerLevelHybridPrinter extends LogPrinter {
  /// The log printer to use for logs below [evalLevel].
  final LogPrinter lowerPrinter;

  /// The log printer to use for logs at or above [evalLevel].
  final LogPrinter normalPrinter;

  /// The log level for checking if the log should be printed by the
  /// [lowerPrinter] or [normalPrinter].
  final Level evalLevel;

  LowerLevelHybridPrinter({
    required this.lowerPrinter,
    required this.normalPrinter,
    required this.evalLevel,
  });

  @override
  List<String> log(LogEvent event) {
    return event.level.value < evalLevel.value
        ? lowerPrinter.log(event)
        : normalPrinter.log(event);
  }
}
