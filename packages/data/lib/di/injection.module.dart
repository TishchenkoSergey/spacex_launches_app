//@GeneratedMicroModule;DataPackageModule;package:data/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/di/injection.dart' as _i237;
import 'package:data/repository/launches_repository.dart' as _i584;
import 'package:data/repository/rocket_repository.dart' as _i1003;
import 'package:dio/dio.dart' as _i361;
import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.githubClient());
    gh.factory<_i494.LaunchesRepository>(
        () => _i584.LaunchesRepositoryImpl(dio: gh<_i361.Dio>()));
    gh.factory<_i494.RocketRepository>(
        () => _i1003.RocketRepositoryImpl(dio: gh<_i361.Dio>()));
  }
}

class _$RegisterModule extends _i237.RegisterModule {}
