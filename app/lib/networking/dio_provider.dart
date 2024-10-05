import 'package:dio/dio.dart';
import 'package:lienhoa_gate_controller/logging/logger_provider.dart';
import 'package:lienhoa_gate_controller/networking/interceptors/log_interceptors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

/// Provider of [Dio] instances.
@Riverpod(keepAlive: true)
Dio dio(DioRef ref, String baseUrl) {
  final dio = Dio(
    BaseOptions(baseUrl: baseUrl),
  );

  final logger = ref.watch(loggerProvider);

  dio.interceptors.addAll([
    LoggerIntercepter(logger),
  ]);

  ref.onDispose(dio.close);
  return dio;
}

