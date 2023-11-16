import 'package:flutter_repopattern/data/network/client/api_client.dart';
import 'package:flutter_repopattern/data/network/network_mapper.dart';
import 'package:flutter_repopattern/domain/model/movie.dart';

class MoviesRepository {
  final ApiClient apiClient;
  final NetworkMapper networkMapper;

  MoviesRepository({required this.apiClient, required this.networkMapper});

  Future<List<Movie>> getUpcomingMovies({
    required int limit,
  })

}
