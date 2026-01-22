// Cinemapedia Tabs
import 'package:go_router/go_router.dart';
import 'package:cinemapedia_tabs/ui/screens/screens.dart';
import 'package:cinemapedia_tabs/ui/views/views.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(childView: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeView();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'movie/:id',
              name: MovieScreen.name,
              builder: (context, state) {
                final movieId = state.pathParameters['id'] ?? 'no-id';
                return MovieScreen(movieId: movieId);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, state) {
            return const FavoritesView();
          },
        ),
      ],
    ),

    /// Parent-child routes:
    /// ```dart
    /// GoRoute(
    ///   path: '/',
    ///   name: HomeScreen.name,
    ///   builder: (context, state) => const HomeScreen(childView: HomeView()),
    ///   routes: <RouteBase>[
    ///     GoRoute(
    ///       path: 'movie/:id',
    ///       name: MovieScreen.name,
    ///       builder: (context, state) {
    ///         final movieId = state.pathParameters['id'] ?? 'no-id';
    ///         return MovieScreen(movieId: movieId);
    ///       },
    ///     ),
    ///   ],
    /// ),
    /// ```
  ],
);
