// Cinemapedia Search Movies

import 'package:cinemapedia_search_movies/core/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia_search_movies/core/domain/entities/actor_entity.dart';
import 'package:cinemapedia_search_movies/core/domain/repositories/actors_repository.dart';

class ActorsRepositoryImplementation extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorsRepositoryImplementation(this.datasource);

  @override
  Future<List<ActorEntity>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
