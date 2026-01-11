// Cinemapedia Basic UI
import 'package:cinemapedia_basic_ui/core/domain/entities/movie_entity.dart';

abstract class MoviesDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
