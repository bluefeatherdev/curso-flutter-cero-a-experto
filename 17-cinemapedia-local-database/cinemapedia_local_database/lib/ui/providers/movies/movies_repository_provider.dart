// Cinemapedia Local Database
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_local_database/core/data/datasources/moviedb_datasource.dart';
import 'package:cinemapedia_local_database/core/data/repositories/movie_repository_implementation.dart';

// An inmutable repository
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImplementation(MoviedbDatasource());
});
