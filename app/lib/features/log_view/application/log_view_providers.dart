import 'package:lienhoa_gate_controller/utils/riverpod_ref_extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'log_view_providers.g.dart';

@Riverpod(keepAlive: true)
class LogListData extends _$LogListData {
  @override
  List<String> build() {
    return [];
  }

  void addLog(String log) {
    state = [log, ...state];
  }
}

@riverpod
List<String> logListDataThrottled(
  LogListDataThrottledRef ref,
  Duration throttleTime,
) {
  final stream = ref.createStream(logListDataProvider).throttleTime(
        throttleTime,
        leading: true,
        trailing: true,
      );

  final sub = stream.listen((event) {
    ref.state = event;
  });
  ref.onDispose(sub.cancel);

  return ref.read(logListDataProvider);
}
