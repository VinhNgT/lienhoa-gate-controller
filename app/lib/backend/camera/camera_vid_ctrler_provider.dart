import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_vid_ctrler_provider.g.dart';

@riverpod
VideoController cameraVideoController(CameraVideoControllerRef ref) {
  const videoStreamUser = 'admin';
  const videoStreamPassword = '***REMOVED***';
  const videoStreamUrl = '192.168.11.180:554/ch1/main';

  final player = Player(
    configuration: const PlayerConfiguration(
      muted: true,
    ),
  );

  if (player.platform is NativePlayer) {
    const props = {
      'profile': 'low-latency',
      'initial-audio-sync': 'no',
    };
    for (final entry in props.entries) {
      (player.platform as NativePlayer).setProperty(entry.key, entry.value);
    }
  }

  player.open(
    Media('rtsp://$videoStreamUser:$videoStreamPassword@$videoStreamUrl'),
  );

  ref.onDispose(player.dispose);
  return VideoController(player);
}
