// Cinemapedia Local Database
import 'package:go_router/go_router.dart';
import 'package:cinemapedia_local_database/ui/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home/0',
  routes: <RouteBase>[
    GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        final int pageIndex = int.parse(state.pathParameters['page'] ?? '0');
        return HomeScreen(pageIndex: pageIndex);
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) {
            final String movieId = state.pathParameters['id'] ?? 'no-id';
            return MovieScreen(movieId: movieId);
          },
        ),
      ],
    ),
    GoRoute(path: '/', redirect: (_, _) => '/home/0'),
  ],
);
