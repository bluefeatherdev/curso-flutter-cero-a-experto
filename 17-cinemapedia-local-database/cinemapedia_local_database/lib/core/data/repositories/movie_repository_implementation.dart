// Cinemapedia Local Database
import 'package:cinemapedia_local_database/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_local_database/core/domain/repositories/movies_repository.dart';
import 'package:cinemapedia_local_database/core/data/datasources/moviedb_datasource.dart';

class MovieRepositoryImplementation extends MoviesRepository {
  final MoviedbDatasource datasource;
  MovieRepositoryImplementation(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return datasource.getPopular(page: page);
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) {
    return datasource.getTopRated(page: page);
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
    return datasource.getUpcoming(page: page);
  }

  @override
  Future<Movie> getMovieById(String id) {
    return datasource.getMovieById(id);
  }

  @override
  Future<List<Movie>> searchMovies(String query) {
    return datasource.searchMovies(query);
  }
}
