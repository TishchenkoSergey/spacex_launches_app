import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'package:data/di/injection.module.dart';
import 'package:domain/di/injection.module.dart';

import 'injection.config.dart';

@InjectableInit(
  externalPackageModulesBefore: [
    ExternalModule(DataPackageModule),
    ExternalModule(DomainPackageModule),
  ],
)

/// Initializes and configures di using `GetIt` and `injectable`.
Future<GetIt> configureDependencies() async => GetIt.asNewInstance().init();

/// A module to register external dependencies for injection.
@module
abstract class RegisterModule {}
