// Flutter Widgets App - Advanced Widgets App
import 'package:go_router/go_router.dart';
import 'package:advanced_widgets_app/ui/screens.dart';

/// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/riverpod-counter',
      name: RiverpodCounterScreen.name,
      builder: (context, state) => const RiverpodCounterScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars-dialogs',
      name: SnackBarsDialogsScreen.name,
      builder: (context, state) => const SnackBarsDialogsScreen(),
    ),

    GoRoute(
      path: '/animated-container',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
    ),

    GoRoute(
      path: '/app-tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),

    GoRoute(
      path: '/infinite-scroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),

    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (context, state) => const ThemeChangerScreen(),
    ),
  ],
);
