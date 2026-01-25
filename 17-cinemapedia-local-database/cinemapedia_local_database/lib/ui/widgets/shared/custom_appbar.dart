// Cinemapedia Local Database
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cinemapedia_local_database/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_local_database/ui/providers/providers.dart';
import 'package:cinemapedia_local_database/ui/delegates/search_movies_delegate.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.movie_outlined, color: colors.primary),
              const SizedBox(width: 5),
              Text('Cinemapedia', style: titleStyle),
              const Spacer(),
              IconButton(
                onPressed: () async {
                  final List<Movie> searchedMovies = ref.read(
                    searchedMoviesProvider,
                  );
                  final String searchQuery = ref.read(searchQueryProvider);

                  final Movie? movie = await showSearch<Movie?>(
                    query: searchQuery,
                    context: context,
                    delegate: SearchMoviesDelegate(
                      searchMovies: ref
                          .read(searchedMoviesProvider.notifier)
                          .searchMoviesByQuery,
                      initialMovies: searchedMovies,
                    ),
                  );

                  if (movie == null) return;
                  if (!context.mounted) return;

                  context.push('/home/0/movie/${movie.id}');
                },
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
