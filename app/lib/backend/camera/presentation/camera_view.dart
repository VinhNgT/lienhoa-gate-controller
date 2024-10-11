import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/backend/camera/application/camera_providers.dart';
import 'package:media_kit_video/media_kit_video.dart';

class CameraView extends HookConsumerWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.watch(cameraPlayerProvider);

    return Video(
      controller: VideoController(player),
      controls: NoVideoControls,
    );
  }
}
