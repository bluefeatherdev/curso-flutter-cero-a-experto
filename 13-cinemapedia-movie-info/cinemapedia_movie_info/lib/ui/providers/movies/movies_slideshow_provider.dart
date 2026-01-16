// Cinemapedia Movie Info
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_movie_info/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_movie_info/ui/providers/providers.dart';

final movieSlideshowProvider = Provider<List<Movie>>((ref) {
  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayingMovies.isEmpty) return [];

  return nowPlayingMovies.sublist(0, 6);
});
