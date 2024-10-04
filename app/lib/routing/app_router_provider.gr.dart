// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:lienhoa_gate_controller/features/home/presentation/home_screen.dart'
    as _i1;
import 'package:lienhoa_gate_controller/features/log_view/presentation/log_view_screen.dart'
    as _i2;
import 'package:lienhoa_gate_controller/features/settings/presentation/settings_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    LogViewRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LogViewScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LogViewScreen]
class LogViewRoute extends _i4.PageRouteInfo<void> {
  const LogViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LogViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogViewRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SettingsScreen]
class SettingsRoute extends _i4.PageRouteInfo<void> {
  const SettingsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
