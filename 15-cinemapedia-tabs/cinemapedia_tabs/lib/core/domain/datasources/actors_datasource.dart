// Cinemapedia Tabs
import 'package:cinemapedia_tabs/core/domain/entities/actor_entity.dart';

abstract class ActorsDatasource {
  Future<List<ActorEntity>> getActorsByMovie(String movieId);
}
