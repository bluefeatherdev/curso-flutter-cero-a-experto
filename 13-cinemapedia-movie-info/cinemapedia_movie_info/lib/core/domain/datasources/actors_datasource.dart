// Cinemapedia Movie Info
import 'package:cinemapedia_movie_info/core/domain/entities/actor_entity.dart';

abstract class ActorsDatasource {
  Future<List<ActorEntity>> getActorsByMovie(String movieId);
}
