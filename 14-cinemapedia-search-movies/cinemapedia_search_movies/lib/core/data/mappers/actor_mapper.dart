// Cinemapedia Search Movies
import 'package:cinemapedia_search_movies/core/data/models/moviedb/credits_response.dart';
import 'package:cinemapedia_search_movies/core/domain/entities/actor_entity.dart';

class ActorMapper {
  static ActorEntity castToEntity(Cast cast) {
    return ActorEntity(
      id: cast.id,
      name: cast.name,
      profilePath: cast.profilePath != null
          ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
          : 'https://st3.depositphotos.com/4111759/13425/v/600/depositphotos_134255710-stock-illustration-avatar-vector-male-profile-gray.jpg',
      character: cast.character,
    );
  }
}
