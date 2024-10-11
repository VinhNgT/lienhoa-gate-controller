import 'dart:typed_data';

import 'package:lienhoa_gate_controller/backend/camera/data/camera_client.dart';
import 'package:media_kit/media_kit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_providers.g.dart';

@riverpod
Player cameraPlayer(CameraPlayerRef ref) {
  final client = ref.watch(cameraClientProvider);

  final player = client.buildPlayer();
  player.play();
  ref.onDispose(player.dispose);

  return player;
}

@Riverpod(keepAlive: true)
class CapturedCameraImage extends _$CapturedCameraImage {
  @override
  Uint8List? build() {
    return null;
  }

  Future<Uint8List?> captureNewImage() async {
    state = await ref.read(cameraPlayerProvider).screenshot();
    return state;
  }
}
