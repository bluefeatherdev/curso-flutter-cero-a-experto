// Cinemapedia Local Database
import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia_local_database/ui/theme/app_theme.dart';
import 'package:cinemapedia_local_database/core/router/app_router.dart';
// import 'package:cinemapedia_local_database/core/database/database.dart';

Future<void> main() async {
  // Testing Drift Database
  WidgetsFlutterBinding.ensureInitialized();

  /// Testing Drift Database
  /// ```dart
  /// WidgetsFlutterBinding.ensureInitialized();
  ///
  /// // Testing an insert query
  /// await database
  ///     .into(database.favoritesMovies)
  ///     .insert(
  ///       FavoritesMoviesCompanion.insert(
  ///         movieId: 1,
  ///         backdropPath: 'backdropPath.png',
  ///         originalTitle: 'My first movie',
  ///         posterPath: 'posterPath.png',
  ///         title: 'Testing Drift Database',
  ///       ),
  ///     );
  ///
  /// // Testing a select query
  /// final movies = await database.select(database.favoritesMovies).get();
  /// debugPrint('movies: $movies');
  ///
  /// // Testing a delete query
  /// final deleteQuery = database.delete(database.favoritesMovies);
  /// await deleteQuery.go();
  /// final moviesAfterDelete = await database
  ///     .select(database.favoritesMovies)
  ///     .get();
  /// debugPrint('movies: $moviesAfterDelete');
  /// ```

  await dotenv.load(fileName: '.env');

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
