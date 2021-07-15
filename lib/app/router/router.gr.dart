// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:shopping_app/ui/views/home/home_view.dart' as _i4;
import 'package:shopping_app/ui/views/startup/startup_view.dart' as _i3;

class ShoppingAppRouter extends _i1.RootStackRouter {
  ShoppingAppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.StartupView();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.HomeView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(StartupRoute.name, path: '/'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-view')
      ];
}

class StartupRoute extends _i1.PageRouteInfo {
  const StartupRoute() : super(name, path: '/');

  static const String name = 'StartupRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-view');

  static const String name = 'HomeRoute';
}
