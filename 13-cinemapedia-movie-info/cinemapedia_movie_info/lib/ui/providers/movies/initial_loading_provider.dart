// Cinemapedia Movie Info
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_movie_info/ui/providers/movies/movies_provider.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final bool step1 = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final bool step2 = ref.watch(popularMoviesProvider).isEmpty;
  final bool step3 = ref.watch(topRatedMoviesProvider).isEmpty;
  final bool step4 = ref.watch(upcomingMoviesProvider).isEmpty;

  if (step1 || step2 || step3 || step4) return true;

  return false;
});
