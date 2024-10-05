import 'package:lienhoa_gate_controller/features/camera/domain/camera.dart';
import 'package:media_kit/media_kit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_controller.g.dart';

@riverpod
class CameraController extends _$CameraController {
  static const videoStreamUser = 'admin';
  static const videoStreamPassword = 'Default0';
  static const videoStreamUrl = '192.168.11.180:554/ch1/main';

  static const mvpConfig = {
    'profile': 'low-latency',
    'initial-audio-sync': 'no',
  };

  @override
  Camera build() {
    final player = Player(
      configuration: const PlayerConfiguration(
        muted: true,
      ),
    );

    if (player.platform is NativePlayer) {
      for (final entry in mvpConfig.entries) {
        (player.platform as NativePlayer).setProperty(entry.key, entry.value);
      }
    }

    player.open(
      Media('rtsp://$videoStreamUser:$videoStreamPassword@$videoStreamUrl'),
    );

    ref.onDispose(player.dispose);
    return Camera(player: player);
  }

  Future<void> capture() async {
    state = await state.capture();
  }
}
