import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spacex_launches_app/features/features.dart';

import 'app_route_enum.dart';

class AppRoute {
  AppRoute({required this.serviceLocator});

  final GetIt serviceLocator;

  GoRouter build(BuildContext context) {
    return GoRouter(routes: [_buildCameraPage()], initialLocation: '/${Routes.launchesScreen.name}');
  }

  GoRoute _buildCameraPage() {
    return GoRoute(
      name: Routes.launchesScreen.name,
      path: '/${Routes.launchesScreen.name}',
      builder: (context, state) => LaunchesScreen()
    );
  }
}
