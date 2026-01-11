// Cinemapedia Basic UI
import 'package:cinemapedia_basic_ui/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_basic_ui/core/domain/repositories/movies_repository.dart';
import 'package:cinemapedia_basic_ui/core/data/datasources/moviedb_datasource.dart';

class MovieRepositoryImplementation extends MoviesRepository {
  final MoviedbDatasource datasource;
  MovieRepositoryImplementation(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
