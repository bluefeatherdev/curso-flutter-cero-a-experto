// Cinemapedia Movie Info
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_movie_info/core/data/datasources/moviedb_datasource.dart';
import 'package:cinemapedia_movie_info/core/data/repositories/movie_repository_implementation.dart';

// An inmutable repository
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImplementation(MoviedbDatasource());
});
