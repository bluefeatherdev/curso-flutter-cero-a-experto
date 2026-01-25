// Cinemapedia Local Database
import 'package:cinemapedia_local_database/core/domain/entities/actor_entity.dart';

abstract class ActorsRepository {
  Future<List<ActorEntity>> getActorsByMovie(String movieId);
}
