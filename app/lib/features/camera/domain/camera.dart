import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

part 'camera.freezed.dart';

@freezed
class Camera with _$Camera {
  const factory Camera({
    required Player player,
    Uint8List? capturedImage,
  }) = _Camera;
}

extension CameraMethods on Camera {
  VideoController get videoController => VideoController(player);

  Future<Camera> capture() async {
    final capturedImage = await player.screenshot();
    return copyWith(capturedImage: capturedImage);
  }
}
