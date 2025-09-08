import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

/// Global instance of GetIt for dependency injection
late GetIt di;

/// Initialize injectable for the micro package
@InjectableInit.microPackage()
void initMicroPackage() {}

/// Module class to register dependencies
@module
abstract class RegisterModule {
  /// Provides a Dio client configured for GitHub API
  /// Registered as a lazy singleton
  @LazySingleton()
  Dio githubClient() {
    final dio = Dio();

    /// You can add Dio interceptors or options here if needed
    return dio;
  }
}
