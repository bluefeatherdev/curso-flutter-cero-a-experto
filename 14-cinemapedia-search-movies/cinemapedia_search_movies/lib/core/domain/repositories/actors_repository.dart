// Cinemapedia Search Movies
import 'package:cinemapedia_search_movies/core/domain/entities/actor_entity.dart';

abstract class ActorsRepository {
  Future<List<ActorEntity>> getActorsByMovie(String movieId);
}
