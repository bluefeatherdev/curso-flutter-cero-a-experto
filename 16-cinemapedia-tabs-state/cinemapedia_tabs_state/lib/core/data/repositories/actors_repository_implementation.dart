// Cinemapedia Tabs State

import 'package:cinemapedia_tabs_state/core/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia_tabs_state/core/domain/entities/actor_entity.dart';
import 'package:cinemapedia_tabs_state/core/domain/repositories/actors_repository.dart';

class ActorsRepositoryImplementation extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorsRepositoryImplementation(this.datasource);

  @override
  Future<List<ActorEntity>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
