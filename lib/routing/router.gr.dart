// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const MainPage());
    },
    CatalogRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const CatalogPage());
    },
    DiscountsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const DiscountsPage());
    },
    BasketRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const BasketPage());
    },
    FavoritesRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const FavoritesPage());
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: ProfilePage(key: args.key, string: args.string));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(MainRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'catalog',
              fullMatch: true),
          RouteConfig(CatalogRoute.name,
              path: 'catalog', parent: MainRoute.name),
          RouteConfig(DiscountsRoute.name,
              path: 'discounts', parent: MainRoute.name),
          RouteConfig(BasketRoute.name, path: 'basket', parent: MainRoute.name),
          RouteConfig(FavoritesRoute.name,
              path: 'favorites', parent: MainRoute.name),
          RouteConfig(ProfileRoute.name,
              path: 'profile', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [CatalogPage]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute() : super(CatalogRoute.name, path: 'catalog');

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [DiscountsPage]
class DiscountsRoute extends PageRouteInfo<void> {
  const DiscountsRoute() : super(DiscountsRoute.name, path: 'discounts');

  static const String name = 'DiscountsRoute';
}

/// generated route for
/// [BasketPage]
class BasketRoute extends PageRouteInfo<void> {
  const BasketRoute() : super(BasketRoute.name, path: 'basket');

  static const String name = 'BasketRoute';
}

/// generated route for
/// [FavoritesPage]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute() : super(FavoritesRoute.name, path: 'favorites');

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({Key? key, required String string})
      : super(ProfileRoute.name,
            path: 'profile', args: ProfileRouteArgs(key: key, string: string));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.string});

  final Key? key;

  final String string;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, string: $string}';
  }
}
