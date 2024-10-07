import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'log_view_providers.g.dart';

@Riverpod(keepAlive: true)
class LogViewListData extends _$LogViewListData {
  @override
  List<String> build() {
    return [];
  }

  void addLog(String log) {
    state = [log, ...state];
  }
}
