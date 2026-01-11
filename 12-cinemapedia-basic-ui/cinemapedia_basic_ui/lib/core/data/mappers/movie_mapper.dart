// Cinemapedia Basic UI
import 'package:cinemapedia_basic_ui/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_basic_ui/core/data/models/movie_moviedb.dart';

class MovieMapper {
  static Movie moviedbToEntity(MovieMoviedb moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        // : 'https://sd.keepcalms.com/i-w600/keep-calm-poster-not-found.jpg',
        : 'https://placehold.co/500x750?text=Poster+Not+Found',
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : 'no-poster',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );
}
