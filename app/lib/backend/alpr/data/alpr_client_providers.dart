import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:lienhoa_gate_controller/backend/alpr/data/alpr_client.dart';
import 'package:lienhoa_gate_controller/backend/camera/application/camera_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alpr_client_providers.g.dart';

@riverpod
FutureOr<List<String>> alprGetLicensePlatesFuture(
  AlprGetLicensePlatesFutureRef ref,
  Uint8List imageFile,
) {
  final service = ref.watch(alprClientProvider);

  final CancelToken cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  return service.getLicensePlates(
    imageFile: imageFile,
    cancelToken: cancelToken,
  );
}

@riverpod
FutureOr<List<String>> alprCapturedImageLicensePlatesFuture(
  AlprCapturedImageLicensePlatesFutureRef ref,
) async {
  final img = ref.watch(capturedCameraImageProvider);
  if (img == null) {
    return [];
  }

  final licensePlates =
      await ref.watch(alprGetLicensePlatesFutureProvider(img).future);

  return licensePlates;
}
