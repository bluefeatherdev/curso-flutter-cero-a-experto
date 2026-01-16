// Cinemapedia Movie Info
import 'package:dio/dio.dart';
import 'package:cinemapedia_movie_info/core/constants/environment.dart';
import 'package:cinemapedia_movie_info/core/data/mappers/actor_mapper.dart';
import 'package:cinemapedia_movie_info/core/data/models/moviedb/credits_response.dart';
import 'package:cinemapedia_movie_info/core/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia_movie_info/core/domain/entities/actor_entity.dart';

class ActorsMoviedbDatasource extends ActorsDatasource {
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
  Future<List<ActorEntity>> getActorsByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');

    final castResponse = CreditsResponse.fromJson(response.data);

    List<ActorEntity> actors = castResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();

    return actors;
  }
}
