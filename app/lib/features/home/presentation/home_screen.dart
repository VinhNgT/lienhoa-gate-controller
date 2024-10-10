import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/backend/camera/application/camera_providers.dart';
import 'package:lienhoa_gate_controller/backend/camera/presentation/camera_view.dart';
import 'package:lienhoa_gate_controller/utils/context_extensions.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => LayoutGrid(
          areas: '''
            camera    control
            camshoot  control
          ''',
          columnSizes: [((constraints.maxHeight / 2) * (16 / 9)).px, 1.fr],
          rowSizes: [
            1.fr,
            1.fr,
          ],
          children: [
            const CameraView().inGridArea('camera'),
            const CapturedImageView().inGridArea('camshoot'),
            const AutoRouter().inGridArea('control'),
          ],
        ),
      ),
    );
  }
}

class CapturedImageView extends HookConsumerWidget {
  const CapturedImageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final capturedImage = ref.watch(capturedCameraImageProvider);

    return capturedImage != null
        ? Image.memory(
            capturedImage,
            gaplessPlayback: true,
          )
        : Container(
            color: Colors.grey,
            child: Center(
              child: Text(
                'Chưa xử lý ảnh',
                style: context.textTheme.titleMedium,
              ),
            ),
          );
  }
}
