// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alpr_service_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$alprGetLicensePlatesFutureHash() =>
    r'84d8d4a07352becea490108a078abdb002dc5147';

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

/// See also [alprGetLicensePlatesFuture].
@ProviderFor(alprGetLicensePlatesFuture)
const alprGetLicensePlatesFutureProvider = AlprGetLicensePlatesFutureFamily();

/// See also [alprGetLicensePlatesFuture].
class AlprGetLicensePlatesFutureFamily
    extends Family<AsyncValue<List<String>>> {
  /// See also [alprGetLicensePlatesFuture].
  const AlprGetLicensePlatesFutureFamily();

  /// See also [alprGetLicensePlatesFuture].
  AlprGetLicensePlatesFutureProvider call(
    Uint8List imageFile,
  ) {
    return AlprGetLicensePlatesFutureProvider(
      imageFile,
    );
  }

  @override
  AlprGetLicensePlatesFutureProvider getProviderOverride(
    covariant AlprGetLicensePlatesFutureProvider provider,
  ) {
    return call(
      provider.imageFile,
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
  String? get name => r'alprGetLicensePlatesFutureProvider';
}

/// See also [alprGetLicensePlatesFuture].
class AlprGetLicensePlatesFutureProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [alprGetLicensePlatesFuture].
  AlprGetLicensePlatesFutureProvider(
    Uint8List imageFile,
  ) : this._internal(
          (ref) => alprGetLicensePlatesFuture(
            ref as AlprGetLicensePlatesFutureRef,
            imageFile,
          ),
          from: alprGetLicensePlatesFutureProvider,
          name: r'alprGetLicensePlatesFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$alprGetLicensePlatesFutureHash,
          dependencies: AlprGetLicensePlatesFutureFamily._dependencies,
          allTransitiveDependencies:
              AlprGetLicensePlatesFutureFamily._allTransitiveDependencies,
          imageFile: imageFile,
        );

  AlprGetLicensePlatesFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageFile,
  }) : super.internal();

  final Uint8List imageFile;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(AlprGetLicensePlatesFutureRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AlprGetLicensePlatesFutureProvider._internal(
        (ref) => create(ref as AlprGetLicensePlatesFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _AlprGetLicensePlatesFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AlprGetLicensePlatesFutureProvider &&
        other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AlprGetLicensePlatesFutureRef
    on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `imageFile` of this provider.
  Uint8List get imageFile;
}

class _AlprGetLicensePlatesFutureProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with AlprGetLicensePlatesFutureRef {
  _AlprGetLicensePlatesFutureProviderElement(super.provider);

  @override
  Uint8List get imageFile =>
      (origin as AlprGetLicensePlatesFutureProvider).imageFile;
}

String _$alprCapturedImageLicensePlatesFutureHash() =>
    r'5c7feb1a7383ab19d742af9ee6dcc43c61c9fabf';

/// See also [alprCapturedImageLicensePlatesFuture].
@ProviderFor(alprCapturedImageLicensePlatesFuture)
final alprCapturedImageLicensePlatesFutureProvider =
    AutoDisposeFutureProvider<List<String>>.internal(
  alprCapturedImageLicensePlatesFuture,
  name: r'alprCapturedImageLicensePlatesFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$alprCapturedImageLicensePlatesFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AlprCapturedImageLicensePlatesFutureRef
    = AutoDisposeFutureProviderRef<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
