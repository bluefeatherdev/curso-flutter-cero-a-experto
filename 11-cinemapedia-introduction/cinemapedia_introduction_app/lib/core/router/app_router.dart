// Cinemapedia Introduction App
import 'package:go_router/go_router.dart';
import 'package:cinemapedia_introduction_app/ui/screens/screens.dart';

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
