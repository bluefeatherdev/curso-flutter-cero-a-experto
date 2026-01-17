// Cinemapedia Search Movies
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_search_movies/core/data/datasources/moviedb_datasource.dart';
import 'package:cinemapedia_search_movies/core/data/repositories/movie_repository_implementation.dart';

// An inmutable repository
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImplementation(MoviedbDatasource());
});
