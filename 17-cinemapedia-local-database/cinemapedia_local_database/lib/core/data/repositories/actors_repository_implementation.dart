// Cinemapedia Local Database

import 'package:cinemapedia_local_database/core/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia_local_database/core/domain/entities/actor_entity.dart';
import 'package:cinemapedia_local_database/core/domain/repositories/actors_repository.dart';

class ActorsRepositoryImplementation extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorsRepositoryImplementation(this.datasource);

  @override
  Future<List<ActorEntity>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
