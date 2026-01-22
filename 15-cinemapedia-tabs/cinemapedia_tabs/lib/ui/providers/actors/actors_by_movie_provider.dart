// Cinemapedia Tabs
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:cinemapedia_tabs/core/domain/entities/actor_entity.dart';
import 'package:cinemapedia_tabs/ui/providers/actors/actors_repository_provider.dart';

final actorsByMovieProvider =
    StateNotifierProvider<
      ActorsByMovieNotifier,
      Map<String, List<ActorEntity>>
    >((ref) {
      final actorsRepository = ref.watch(actorsRepositoryProvider);

      return ActorsByMovieNotifier(
        getActors: actorsRepository.getActorsByMovie,
      );
    });

/*
  {
    '505642': <ActorEntity>[],
    '505643': <ActorEntity>[],
    '505645': <ActorEntity>[],
    '501231': <ActorEntity>[],
  }
*/

typedef GetActorsCallback = Future<List<ActorEntity>> Function(String movieId);

class ActorsByMovieNotifier
    extends StateNotifier<Map<String, List<ActorEntity>>> {
  final GetActorsCallback getActors;

  ActorsByMovieNotifier({required this.getActors}) : super({});

  Future<void> loadActors(String movieId) async {
    if (state[movieId] != null) return;

    final List<ActorEntity> actors = await getActors(movieId);
    state = {...state, movieId: actors};
  }
}
