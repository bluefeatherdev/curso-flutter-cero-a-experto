// Cinemapedia Search Movies
import 'package:flutter/material.dart';
import 'package:cinemapedia_search_movies/core/domain/entities/movie_entity.dart';

typedef SearchMoviesCallback = Future<List<Movie>> Function(String query);
