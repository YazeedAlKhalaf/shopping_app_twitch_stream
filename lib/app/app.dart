import 'package:flutter/material.dart';
    import 'package:shopping_app/app/locator/locator.dart';
    import 'package:shopping_app/app/services/router_service.dart';

class ShoppingAppApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RouterService _routerService = locator<RouterService>();

    return MaterialApp.router(
      title: "ShoppingApp",
      routeInformationParser: _routerService.router.defaultRouteParser(),
      routerDelegate: _routerService.router.delegate(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}