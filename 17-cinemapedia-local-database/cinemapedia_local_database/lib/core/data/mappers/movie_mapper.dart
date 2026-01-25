// Cinemapedia Local Database
import 'package:cinemapedia_local_database/core/domain/entities/movie_entity.dart';
import 'package:cinemapedia_local_database/core/data/models/moviedb/movie_moviedb.dart';
import 'package:cinemapedia_local_database/core/data/models/moviedb/movie_details.dart';

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
        : 'https://placehold.co/500x750?text=Poster+Not+Found',
    releaseDate: moviedb.releaseDate != null
        ? moviedb.releaseDate!
        : DateTime.now(),
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        // : 'https://sd.keepcalms.com/i-w600/keep-calm-poster-not-found.jpg',
        : 'https://placehold.co/500x750?text=Poster+Not+Found',
    genreIds: moviedb.genres.map((e) => e.name).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        // : 'https://sd.keepcalms.com/i-w600/keep-calm-poster-not-found.jpg',
        : 'https://placehold.co/500x750?text=Poster+Not+Found',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );
}
