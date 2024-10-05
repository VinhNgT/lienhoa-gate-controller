import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/features/camera/application/camera_controller.dart';
import 'package:media_kit_video/media_kit_video.dart';

class CameraView extends HookConsumerWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cameraVideoController =
        ref.watch(cameraControllerProvider.select((value) => value.player));

    return Video(
      controller: VideoController(cameraVideoController),
      controls: NoVideoControls,
    );
  }
}
