// Cinemapedia Local Database
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_local_database/core/data/repositories/actors_repository_implementation.dart';
import 'package:cinemapedia_local_database/core/data/datasources/actors_moviedb_datasource.dart';

// An inmutable repository
final actorsRepositoryProvider = Provider((ref) {
  return ActorsRepositoryImplementation(ActorsMoviedbDatasource());
});
