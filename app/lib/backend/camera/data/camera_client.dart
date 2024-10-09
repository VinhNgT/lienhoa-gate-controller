import 'package:media_kit/media_kit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_client.g.dart';

class CameraClient {
  const CameraClient({
    required this.videoStreamUser,
    required this.videoStreamPassword,
    required this.videoStreamUrl,
    required this.mvpConfig,
  });

  final String videoStreamUser;
  final String videoStreamPassword;
  final String videoStreamUrl;
  final Map<String, String> mvpConfig;

  /// Builds a camera [Player].
  ///
  /// Remember to dispose the player when it's no longer needed.
  Player buildPlayer() {
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

    return player;
  }
}

@riverpod
CameraClient cameraClient(CameraClientRef ref) {
  const videoStreamUser = 'admin';
  const videoStreamPassword = 'Default0';
  const videoStreamUrl = '192.168.11.180:554/ch1/main';
  const mvpConfig = {
    'profile': 'low-latency',
    'initial-audio-sync': 'no',
  };

  return const CameraClient(
    videoStreamUser: videoStreamUser,
    videoStreamPassword: videoStreamPassword,
    videoStreamUrl: videoStreamUrl,
    mvpConfig: mvpConfig,
  );
}
