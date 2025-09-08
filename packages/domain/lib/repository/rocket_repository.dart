import 'package:domain/models/models.dart';

/// Abstract interface for fetching SpaceX rockets information
abstract interface class RocketRepository {
  /// Fetches a list of rockets
  ///
  /// Returns a Future containing a list of [RocketModel]
  Future<List<RocketModel>> getRocketsInfo();
}
