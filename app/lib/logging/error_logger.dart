import 'package:lienhoa_gate_controller/exceptions/app_exceptions.dart';
import 'package:logger/logger.dart';

/// A logger that logs all errors and exceptions in the app.
class ErrorLogger {
  ErrorLogger(this.logger);
  final Logger logger;

  void log(
    String? message, {
    required Object error,
    StackTrace? stackTrace,
  }) {
    switch (error) {
      case (final AppException exception):
        logger.w(
          message ?? 'App exception',
          error: exception,
          stackTrace: stackTrace,
        );

      case _:
        logger.e(
          message ?? 'Unexpected error',
          error: error,
          stackTrace: stackTrace,
        );
    }
  }
}
