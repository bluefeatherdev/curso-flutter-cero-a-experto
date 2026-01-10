// Cinemapedia Introduction App
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_introduction_app/core/data/datasources/moviedb_datasource.dart';
import 'package:cinemapedia_introduction_app/core/data/repositories/movie_repository_implementation.dart';

// An inmutable repository
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImplementation(MoviedbDatasource());
});
