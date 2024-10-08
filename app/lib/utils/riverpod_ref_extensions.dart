import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

extension RefX<T> on Ref<T> {
  Stream<T> createStream<V>(AlwaysAliveProviderListenable<T> provider) {
    final streamController = StreamController<T>();
    listen(
      provider,
      (_, next) {
        streamController.add(next);
      },
      fireImmediately: true,
    );

    onDispose(streamController.close);
    return streamController.stream;
  }
}

extension AutoDisposeRefX<T> on AutoDisposeRef<T> {
  Stream<T> createStream(ProviderListenable<T> provider) {
    final streamController = StreamController<T>();
    listen(
      provider,
      (_, next) {
        streamController.add(next);
      },
      fireImmediately: true,
    );

    onDispose(streamController.close);
    return streamController.stream;
  }
}
