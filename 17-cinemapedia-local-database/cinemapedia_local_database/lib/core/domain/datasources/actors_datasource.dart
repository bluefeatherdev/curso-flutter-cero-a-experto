// Cinemapedia Local Database
import 'package:cinemapedia_local_database/core/domain/entities/actor_entity.dart';

abstract class ActorsDatasource {
  Future<List<ActorEntity>> getActorsByMovie(String movieId);
}
