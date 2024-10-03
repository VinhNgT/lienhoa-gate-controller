import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vector_graphics/vector_graphics.dart';

/// Error widget that show when an app level error occurs.
class AppErrorWidget extends HookConsumerWidget {
  const AppErrorWidget({super.key, this.errorMessage});

  final String? errorMessage;
  final String _defaultErrorMessage = 'Đã có lỗi xảy ra';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resolvedErrorMessage = _resolveErrorMessage(true);

    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SvgPicture(
                AssetBytesLoader(
                  'assets/icons/compiled/view_error.svg.vec',
                ),
              ),
              const SizedBox(height: 24),
              Text(
                resolvedErrorMessage,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _resolveErrorMessage(bool showDetailedError) {
    if (showDetailedError) {
      return errorMessage ?? _defaultErrorMessage;
    }
    return _defaultErrorMessage;
  }
}

/// Error widget that show when a widget level error occurs.
class WidgetErrorWidget extends HookConsumerWidget {
  const WidgetErrorWidget({super.key, this.errorMessage});

  final String? errorMessage;
  final String _defaultErrorMessage = 'Đã có lỗi xảy ra';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resolvedErrorWidget = _resolveErrorWidget(true);

    return resolvedErrorWidget;
  }

  Widget _resolveErrorWidget(bool showDetailedError) {
    if (showDetailedError) {
      return Text(
        errorMessage ?? _defaultErrorMessage,
        style: Theme.of(useContext())
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.red),
      );
    }

    return Center(child: Text(_defaultErrorMessage));
  }
}
