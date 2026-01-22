// Cinemapedia Tabs
import 'package:cinemapedia_tabs/core/domain/entities/actor_entity.dart';

abstract class ActorsRepository {
  Future<List<ActorEntity>> getActorsByMovie(String movieId);
}
