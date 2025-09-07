import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:logging/logging.dart';

import 'package:domain/domain.dart';

final _logger = Logger('DashboardScreen');

/// Abstract use case for fetching a list of rockets
abstract class GetRocketsInfoUseCase {
  /// Executes the use case and returns a list of [RocketModel]
  Future<List<RocketModel>> execute();
}

/// Implementation of [GetRocketsInfoUseCase] using a [RocketRepository]
@Injectable(as: GetRocketsInfoUseCase)
class GetRocketsInfoUseCaseImpl implements GetRocketsInfoUseCase {
  /// Constructor with required repository
  GetRocketsInfoUseCaseImpl(
      this.rocketRepository,
      );

  /// Repository used to fetch rockets data
  final RocketRepository rocketRepository;

  /// Executes the use case: fetches the rockets info with timeout and error handling
  @override
  Future<List<RocketModel>> execute() async {
    try {
      // Fetch rockets info with a 5-second timeout
      final rocketsInfo = await rocketRepository
          .getRocketsInfo()
          .timeout(const Duration(seconds: 5));

      // Throw if list is empty
      if (rocketsInfo.isEmpty) {
        throw Exception('Check your connection and try again.');
      }

      return rocketsInfo;
    } on TimeoutException catch (e) {
      // Log timeout errors
      _logger.warning('GetRocketsInfoUseCase timeout', e);
      throw Exception('Request timed out: Check your connection and try again.');
    } on Exception catch (e) {
      // Log other exceptions
      _logger.warning('GetRocketsInfoUseCase error', e);
      throw Exception('Failed to load rockets info: Check your connection and try again.');
    }
  }
}
