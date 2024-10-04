import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Calls a future and returns an [AsyncSnapshot] of the result.
///
/// Use this instead of [useFuture] when you want to get the [AsyncSnapshot] of
/// a future, but don't want to call the future right away because if the future
/// completes with an error immediately (e.g. by Future.error) before
/// [useFuture] is called then it is considered unhandled. This hook avoids
/// this issue by ensuring both of them are called at the same time.
///
/// The [initialData], [preserveState] parameters are the same as [useFuture].
///
/// If [rethrowError] is `true` and the future completes with an error, the
/// error is rethrown. This is useful for global error handling, where you want
/// all of the errors to be handled and reported in a single place (for Sentry,
/// Crashlytics, etc).
///
/// Example use case:
/// ```dart
/// final futureFunction =
///   useState<Future<CartItems> Function()?>(null);
///
/// AsyncSnapshot<CartItems> snapshot = useFutureCallback(
///   futureFunction.value,
///   initialData: null,
///   preserveState: true,
///   rethrowError: true,
/// );
/// ```
///
/// See also:
///   * [useFuture], which this hook uses internally.
AsyncSnapshot<T> useFutureCallback<T>(
  Future<T> Function()? futureCallback, {
  T? initialData,
  bool preserveState = true,
  bool rethrowError = true,
}) {
  final future = useMemoized(
    () => futureCallback?.call(),
    [futureCallback],
  );

  final snapshot = useFuture(
    future,
    initialData: initialData,
    preserveState: preserveState,
  );

  if (snapshot
      case AsyncSnapshot(
        connectionState: ConnectionState.done,
        :final error?,
        :final stackTrace?
      ) when rethrowError) {
    Future<Object>.error(error, stackTrace);
  }

  return snapshot;
}
