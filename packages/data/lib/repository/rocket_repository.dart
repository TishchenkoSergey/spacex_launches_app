import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

/// Implementation of RocketRepository using Dio for network requests
@Injectable(as: RocketRepository)
class RocketRepositoryImpl implements RocketRepository {
  /// Constructor with optional Dio client, defaults to a new Dio instance
  RocketRepositoryImpl({Dio? dio}) : httpClient = dio ?? Dio();

  /// HTTP client used for API requests
  final Dio httpClient;

  /// Base URL for SpaceX rockets API
  final String baseUrl = 'https://api.spacexdata.com/v3/rockets';

  /// Fetches the list of rockets from the SpaceX API
  @override
  Future<List<RocketModel>> getRocketsInfo() async {
    try {
      // Send GET request to the API
      final response = await httpClient.get<List<dynamic>>(baseUrl);

      // Ensure the response data is a list
      final responseData = List.of(response.data?.toList() ?? []);

      // Map JSON objects to RocketModel instances
      return responseData
          .map((item) => RocketModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      // Throw an exception if the request fails
      throw Exception('Failed to load Rockets Info: $e');
    }
  }
}
