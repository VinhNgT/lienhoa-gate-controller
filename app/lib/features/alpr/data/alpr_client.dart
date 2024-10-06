import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:lienhoa_gate_controller/features/alpr/domain/alpr_response.dart';
import 'package:lienhoa_gate_controller/networking/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alpr_client.g.dart';

class AlprClient {
  const AlprClient({required this.alprDio});
  final Dio alprDio;

  Future<List<String>> getLicensePlates({
    required Uint8List imageFile,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(imageFile, filename: 'image.jpg'),
    });

    final response = await alprDio.post(
      '/process_file',
      data: formData,
      options: Options(contentType: 'multipart/form-data'),
      cancelToken: cancelToken,
    );

    final alprResponse = AlprResponse.fromJson(response.data!);
    return alprResponse.results!
        .expand((result) => result.candidates!)
        .map((candidate) => candidate.plate!)
        .toList();
  }
}

@riverpod
AlprClient alprClient(AlprClientRef ref) {
  final dio = ref.watch(dioProvider('http://localhost'));
  return AlprClient(alprDio: dio);
}
