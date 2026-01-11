// Cinemapedia Basic UI
import 'package:go_router/go_router.dart';
import 'package:cinemapedia_basic_ui/ui/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
