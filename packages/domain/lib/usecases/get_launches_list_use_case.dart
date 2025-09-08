import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:logging/logging.dart';

import 'package:domain/domain.dart';

final _logger = Logger('DashboardScreen');

/// Abstract use case for fetching a list of launches
abstract class GetLaunchesListUseCase {
  /// Executes the use case and returns a list of [LaunchModel]
  Future<List<LaunchModel>> execute();
}

/// Implementation of [GetLaunchesListUseCase] using a [LaunchesRepository]
@Injectable(as: GetLaunchesListUseCase)
class GetLaunchesListUseCaseImpl implements GetLaunchesListUseCase {
  /// Constructor with required repository
  GetLaunchesListUseCaseImpl(
      this.launchesRepository,
      );

  /// Repository used to fetch launches data
  final LaunchesRepository launchesRepository;

  /// Executes the use case: fetches the launch list with timeout and error handling
  @override
  Future<List<LaunchModel>> execute() async {
    try {
      // Fetch launch list with a 5-second timeout
      final launchList = await launchesRepository
          .getLaunchList()
          .timeout(const Duration(seconds: 5));

      // Throw if list is empty
      if (launchList.isEmpty) {
        throw Exception('Check your connection and try again.');
      }

      return launchList;
    } on TimeoutException catch (e) {
      // Log timeout errors
      _logger.warning('GetLaunchesListUseCase timeout', e);
      throw Exception('Request timed out: Check your connection and try again.');
    } on Exception catch (e) {
      // Log other exceptions
      _logger.warning('GetLaunchesListUseCase error', e);
      throw Exception('Failed to load launches: Check your connection and try again.');
    }
  }
}
