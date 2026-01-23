// Cinemapedia Tabs State
import 'package:cinemapedia_tabs_state/core/domain/entities/actor_entity.dart';

abstract class ActorsRepository {
  Future<List<ActorEntity>> getActorsByMovie(String movieId);
}
