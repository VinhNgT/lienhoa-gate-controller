import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/features/camera/presentation/camera_view.dart';

@RoutePage()
class ControlCenter extends HookConsumerWidget {
  const ControlCenter({super.key});

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
            const CameraView().inGridArea('camshoot'),
            // const SizedBox().inGridArea('camshoot'),
            const Center(
              child: Text('Hello World!'),
            ).inGridArea('control'),
          ],
        ),
      ),
    );
  }
}
