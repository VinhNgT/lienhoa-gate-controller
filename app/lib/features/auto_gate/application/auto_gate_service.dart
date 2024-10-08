import 'package:lienhoa_gate_controller/features/alpr/data/alpr_client_providers.dart';
import 'package:lienhoa_gate_controller/features/log_view/application/log_view_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_gate_service.g.dart';

@riverpod
class AutoGateController extends _$AutoGateController {
  @override
  void build() {
    ref.listen(alprCapturedImageLicensePlatesFutureProvider, (previous, next) {
      if (previous != null && next is AsyncData) {
        ref.read(logListDataProvider.notifier).addLog('ALPR: ${next.value}');
      }
    });
  }
}
