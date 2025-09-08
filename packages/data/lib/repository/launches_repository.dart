import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

/// Implementation of LaunchesRepository using Dio for network requests
@Injectable(as: LaunchesRepository)
class LaunchesRepositoryImpl implements LaunchesRepository {
  /// Constructor with optional Dio client, defaults to a new Dio instance
  LaunchesRepositoryImpl({Dio? dio}) : httpClient = dio ?? Dio();

  /// HTTP client used for API requests
  final Dio httpClient;

  /// Base URL for SpaceX launches API
  final String baseUrl = 'https://api.spacexdata.com/v3/launches';

  /// Fetches the list of launches from the SpaceX API
  @override
  Future<List<LaunchModel>> getLaunchList() async {
    try {
      // Send GET request to the API
      final response = await httpClient.get<List<dynamic>>(baseUrl);

      // Ensure the response data is a list
      final responseData = List.of(response.data?.toList() ?? []);

      // Map JSON objects to LaunchModel instances
      return responseData
          .map((item) => LaunchModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      // Throw an exception if the request fails
      throw Exception('Failed to load Launches: $e');
    }
  }
}
