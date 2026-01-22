// Cinemapedia Tabs
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_tabs/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_tabs/ui/providers/providers.dart';

final movieSlideshowProvider = Provider<List<Movie>>((ref) {
  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayingMovies.isEmpty) return [];

  return nowPlayingMovies.sublist(0, 6);
});
