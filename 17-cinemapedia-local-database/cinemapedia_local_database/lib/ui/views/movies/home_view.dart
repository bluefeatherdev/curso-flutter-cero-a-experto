// Cinemapedia Local Database
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_local_database/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_local_database/ui/providers/providers.dart';
import 'package:cinemapedia_local_database/ui/widgets/widgets.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read<MoviesNotifier>(nowPlayingMoviesProvider.notifier).loadNextPage();
    ref.read<MoviesNotifier>(popularMoviesProvider.notifier).loadNextPage();
    ref.read<MoviesNotifier>(topRatedMoviesProvider.notifier).loadNextPage();
    ref.read<MoviesNotifier>(upcomingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final bool initialLoading = ref.watch(initialLoadingProvider);

    if (initialLoading) return const FullScreenLoader();

    final List<Movie> slideShowMovies = ref.watch(movieSlideshowProvider);
    final List<Movie> nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final List<Movie> popularMovies = ref.watch(popularMoviesProvider);
    final List<Movie> topRatedMovies = ref.watch(topRatedMoviesProvider);
    final List<Movie> upcomingMovies = ref.watch(upcomingMoviesProvider);

    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          floating: true,
          centerTitle: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
            centerTitle: true,
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: <Widget>[
                // const CustomAppbar(),
                MoviesSlideshow(movies: slideShowMovies),

                MoviesHorizontalListview(
                  movies: nowPlayingMovies,
                  title: 'In cinemas',
                  subtitle: 'Monday 20',
                  loadNextPage: () => ref
                      .read(nowPlayingMoviesProvider.notifier)
                      .loadNextPage(),
                ),

                MoviesHorizontalListview(
                  movies: upcomingMovies,
                  title: 'Upcoming',
                  subtitle: 'On May',
                  loadNextPage: () =>
                      ref.read(upcomingMoviesProvider.notifier).loadNextPage(),
                ),

                MoviesHorizontalListview(
                  movies: popularMovies,
                  title: 'Popular',
                  // subtitle: '',
                  loadNextPage: () =>
                      ref.read(popularMoviesProvider.notifier).loadNextPage(),
                ),

                MoviesHorizontalListview(
                  movies: topRatedMovies,
                  title: 'Top Rated',
                  subtitle: 'Ever',
                  loadNextPage: () =>
                      ref.read(topRatedMoviesProvider.notifier).loadNextPage(),
                ),

                const SizedBox(height: 10),
              ],
            );
          }, childCount: 1),
        ),
      ],
    );
  }
}
