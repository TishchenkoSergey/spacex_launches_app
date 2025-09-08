import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'package:spacex_launches_app/app/route/route.dart';

/// Application [App]
class App extends StatefulWidget {
  /// Application [App]
  const App({   required this.themeSettings, required this.serviceLocator, super.key});

  /// The service locator used for dependency injection.
  final GetIt serviceLocator;
  /// The [ThemeData] used for dependency injection.
  final ThemeData  themeSettings;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final route = AppRoute(serviceLocator: widget.serviceLocator).build(context);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: widget.themeSettings,
      routeInformationProvider: route.routeInformationProvider,
      routeInformationParser: route.routeInformationParser,
      routerDelegate: route.routerDelegate,
    );
  }
}
