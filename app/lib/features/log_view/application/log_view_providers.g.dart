// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_view_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$logListDataThrottledHash() =>
    r'c5f2f0240cef037da165a754328bd5a735f62703';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [logListDataThrottled].
@ProviderFor(logListDataThrottled)
const logListDataThrottledProvider = LogListDataThrottledFamily();

/// See also [logListDataThrottled].
class LogListDataThrottledFamily extends Family<List<String>> {
  /// See also [logListDataThrottled].
  const LogListDataThrottledFamily();

  /// See also [logListDataThrottled].
  LogListDataThrottledProvider call(
    Duration throttleTime,
  ) {
    return LogListDataThrottledProvider(
      throttleTime,
    );
  }

  @override
  LogListDataThrottledProvider getProviderOverride(
    covariant LogListDataThrottledProvider provider,
  ) {
    return call(
      provider.throttleTime,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'logListDataThrottledProvider';
}

/// See also [logListDataThrottled].
class LogListDataThrottledProvider extends AutoDisposeProvider<List<String>> {
  /// See also [logListDataThrottled].
  LogListDataThrottledProvider(
    Duration throttleTime,
  ) : this._internal(
          (ref) => logListDataThrottled(
            ref as LogListDataThrottledRef,
            throttleTime,
          ),
          from: logListDataThrottledProvider,
          name: r'logListDataThrottledProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$logListDataThrottledHash,
          dependencies: LogListDataThrottledFamily._dependencies,
          allTransitiveDependencies:
              LogListDataThrottledFamily._allTransitiveDependencies,
          throttleTime: throttleTime,
        );

  LogListDataThrottledProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.throttleTime,
  }) : super.internal();

  final Duration throttleTime;

  @override
  Override overrideWith(
    List<String> Function(LogListDataThrottledRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LogListDataThrottledProvider._internal(
        (ref) => create(ref as LogListDataThrottledRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        throttleTime: throttleTime,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<String>> createElement() {
    return _LogListDataThrottledProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LogListDataThrottledProvider &&
        other.throttleTime == throttleTime;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, throttleTime.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LogListDataThrottledRef on AutoDisposeProviderRef<List<String>> {
  /// The parameter `throttleTime` of this provider.
  Duration get throttleTime;
}

class _LogListDataThrottledProviderElement
    extends AutoDisposeProviderElement<List<String>>
    with LogListDataThrottledRef {
  _LogListDataThrottledProviderElement(super.provider);

  @override
  Duration get throttleTime =>
      (origin as LogListDataThrottledProvider).throttleTime;
}

String _$logListDataHash() => r'1fd6293ef1ddfdf0c8c035e9dda2f0bb1eb25066';

/// See also [LogListData].
@ProviderFor(LogListData)
final logListDataProvider =
    NotifierProvider<LogListData, List<String>>.internal(
  LogListData.new,
  name: r'logListDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$logListDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LogListData = Notifier<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
