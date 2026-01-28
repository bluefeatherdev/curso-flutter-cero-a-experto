// Cinemapedia Local Database
import 'package:cinemapedia_local_database/core/domain/entities/movie_entity.dart';

abstract class LocalStorageDatasource {
  Future<void> toggleFavoriteMovie(Movie movie);

  Future<bool> isFavoriteMovie(int movieId);

  Future<List<Movie>> loadFavoriteMovies({int limit = 10, int offset = 0});
}
