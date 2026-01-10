// Cinemapedia Introduction App
import 'package:dio/dio.dart';
import 'package:cinemapedia_introduction_app/core/constants/environment.dart';
import 'package:cinemapedia_introduction_app/core/data/models/moviedb_response.dart';
import 'package:cinemapedia_introduction_app/core/data/mappers/movie_mapper.dart';
import 'package:cinemapedia_introduction_app/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_introduction_app/core/domain/datasources/movies_datasource.dart';

class MoviedbDatasource extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        // 'language': 'es-es',
        'language': 'en',
      },
    ),
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final moviedbResponse = MoviedbResponse.fromJson(response.data);

    final List<Movie> movies = moviedbResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((moviedb) => MovieMapper.moviedbToEntity(moviedb))
        .toList();

    return movies;
  }
}
