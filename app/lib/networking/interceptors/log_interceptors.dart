import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// Interceptor to log sensitive data using [Logger].
class LoggerIntercepter extends Interceptor {
  const LoggerIntercepter(this.logger);
  final Logger logger;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('Request: ${options.method} ${options.uri}');

    if (options.queryParameters.isNotEmpty) {
      logger.t(options.queryParameters);
    }

    if (options.data != null) {
      logger.t(options.data);
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final resName = switch (response) {
      // The cache interceptor responsed with data from the local cache.
      Response(statusCode: 304) => 'LocalCache',
      _ => null,
    };

    logger.d(
      '${resName ?? 'Response'}: ${response.requestOptions.method} '
      '${response.realUri} => ${response.statusCode}',
    );
    logger.t(response.data);

    handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    final errName = switch (err) {
      // The request is cancelled
      DioException(type: DioExceptionType.cancel) => 'Cancel',

      /// Server responsed that the resource has not been modified.
      /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/304
      ///
      /// The cache interceptor will reuse the local cache, even if it's
      /// expired.
      DioException(response: Response(statusCode: 304)) => 'LocalCacheReuse',

      // Others.
      _ => null,
    };

    String? errMessage = err.response?.statusCode.toString();
    errMessage ??= errName == null ? err.message : null;

    final requestLog = _buildLogMessage([
      err.requestOptions.method,
      err.requestOptions.uri.toString(),
      if (errMessage?.isNotEmpty ?? false) '=> $errMessage',
    ]);

    logger.d('${errName ?? 'Error'}: $requestLog');

    handler.next(err);
  }

  /// Build log message. With no extra spaces when some of the strings is empty.
  String _buildLogMessage(List<String> logContent) {
    final buffer = StringBuffer();

    for (final string in logContent) {
      if (string.isEmpty) {
        continue;
      }

      if (buffer.isNotEmpty) {
        buffer.write(' ');
      }
      buffer.write(string);
    }

    return buffer.toString();
  }
}
