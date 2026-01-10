// Cinemapedia Introduction App
import 'package:cinemapedia_introduction_app/core/domain/entities/movie_entity.dart';

abstract class MoviesDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
