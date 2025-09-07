import 'package:domain/models/models.dart';

/// Abstract interface for fetching SpaceX launches
abstract interface class LaunchesRepository {
  /// Fetches a list of launches
  ///
  /// Returns a Future containing a list of [LaunchModel]
  Future<List<LaunchModel>> getLaunchList();
}
