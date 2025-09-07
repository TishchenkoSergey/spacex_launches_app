import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spacex_launches_app/features/features.dart';

import 'app_route_enum.dart';

/// Manages the application's route configuration using [GoRouter].
class AppRoute {
  /// Creates an [AppRoute] instance with the given [serviceLocator].
  AppRoute({required this.serviceLocator});

  /// The service locator used for dependency injection.
  final GetIt serviceLocator;

  /// Builds and returns the application's [GoRouter] instance.
  GoRouter build(BuildContext context) {
    return GoRouter(routes: [_buildLaunchesPage()], initialLocation: '/${Routes.launchesScreen.name}');
  }

  GoRoute _buildLaunchesPage() {
    return GoRoute(
      name: Routes.launchesScreen.name,
      path: '/${Routes.launchesScreen.name}',
      pageBuilder: (context, state) => CupertinoPage(
        child: BlocProvider(
          create: (context) => LaunchesCubit(serviceLocator.get(), serviceLocator.get()),
          child: const LaunchesScreen(),
        ),
      ),
    );
  }
}
