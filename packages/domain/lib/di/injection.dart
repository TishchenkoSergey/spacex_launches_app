import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// Global instance of GetIt for dependency injection
late GetIt di;

/// Initialize injectable for the micro package
@InjectableInit.microPackage()
void initMicroPackage() {}

/// Module class to register dependencies
/// Currently empty, can be used to provide services or repositories
@module
abstract class RegisterModule {}
