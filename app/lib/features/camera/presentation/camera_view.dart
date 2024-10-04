import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/backend/camera/camera_vid_ctrler_provider.dart';
import 'package:media_kit_video/media_kit_video.dart';

class CameraView extends HookConsumerWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cameraVideoController = ref.watch(cameraVideoControllerProvider);

    return Video(
      controller: cameraVideoController,
      controls: NoVideoControls,
    );
  }
}
