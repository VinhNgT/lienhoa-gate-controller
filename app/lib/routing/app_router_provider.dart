import 'package:auto_route/auto_route.dart';
import 'package:lienhoa_gate_controller/routing/app_router_provider.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router_provider.g.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Sheet,Route')
class AppRouter extends $AppRouter {
  AppRouter(this.ref) : super();
  final AppRouterRef ref;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: LogViewRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: SettingsRoute.page,
            ),
          ],
        ),
      ];

  // @override
  // RouteType get defaultRouteType => RouteType.custom(
  //       transitionsBuilder: _getTransition,
  //     );
}

// extension _TransitionX on AppRouter {
//   RouteTransitionsBuilder get _getTransition => (
//         context,
//         animation,
//         secondaryAnimation,
//         child,
//       ) {
//         return SharedAxisTransition(
//           fillColor: Theme.of(context).scaffoldBackgroundColor,
//           animation: animation,
//           secondaryAnimation: secondaryAnimation,
//           transitionType: SharedAxisTransitionType.horizontal,
//           child: child,
//         );
//       };
// }

@Riverpod(keepAlive: true)
Raw<AppRouter> appRouter(AppRouterRef ref) {
  return AppRouter(ref);
}
