import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spacex_launches_app/theme/theme.dart';

import 'assets/assets.gen.dart';

import 'di/di.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

class BootstrapResult {
  BootstrapResult(this.serviceLocator, this.themeSettings,);

  final GetIt serviceLocator;
  final ThemeData themeSettings;
}

Future<void> bootstrap(FutureOr<Widget> Function(BootstrapResult result) builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  final serviceLocator = await configureDependencies();

  final themeConfig = await ThemeConfig.loadFromAsset(Assets.themes.original);
  final theme = createAppTheme(themeConfig);

  final bootstrapResult = BootstrapResult(serviceLocator, theme);

  runApp(await builder(bootstrapResult));
}
