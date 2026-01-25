# Cinemapedia Local Database

A Flutter application demonstrating clean architecture principles with The Movie Database (TMDb) API integration. This example showcases Riverpod state management, GoRouter navigation, Material Design 3 theming, movie search functionality, actor information display, and comprehensive separation of concerns between domain, data, and presentation layers.

## Structure

The project follows clean architecture pattern with clear separation between core business logic, data access, and user interface.

### Core Layer

**Constants**

The `core/constants/` directory contains environment configuration files that manage API keys and endpoints loaded from `.env` file.

**Router**

The `core/router/app_router.dart` file provides centralized routing configuration using `go_router` package with declarative route definitions and navigation paths for home and movie detail screens.

**Domain**

Domain layer defines the core business logic contracts independent of external frameworks:

- `core/domain/datasources/` contains abstract interfaces defining contracts for movie and actor data retrieval operations
- `core/domain/entities/` provides domain models representing core movie and actor data independent of external API schemas
- `core/domain/repositories/` defines abstract repository interfaces for data access operations

**Data**

Data layer implements the domain contracts and handles external data sources:

- `core/data/datasources/` implements abstract datasources with TheMovieDb API integration using `dio` HTTP client
- `core/data/mappers/` transforms API response models into domain entities
- `core/data/models/moviedb/` defines data transfer objects matching TheMovieDb API response structure
- `core/data/repositories/` implements domain repository interfaces

**Helpers**

The `core/helpers/` directory provides utility functions for formatting and transforming data, such as human-readable number and date formatting.

### UI Layer

**Providers**

State management using Riverpod manages application state across multiple concerns:

- `ui/providers/movies/` contains providers for now playing, popular, top rated, and upcoming movies with pagination support
- `ui/providers/actors/` manages actor data retrieval and caching by movie identifier
- `ui/providers/search/` handles movie search functionality with query management

**Screens**

Screen definitions provide the main navigation structure:

- `ui/screens/movies/home_screen.dart` presents the main application interface with bottom navigation
- `ui/screens/movies/movie_screen.dart` displays detailed movie information with cast

**Views**

View components represent specific content sections:

- `ui/views/movies/home_view.dart` displays now playing, popular, top rated, and upcoming movie lists
- `ui/views/movies/favorites_view.dart` shows user favorite movies

**Widgets**

Reusable widget components build the user interface:

- `ui/widgets/movies/` contains movie-specific widgets like horizontal movie lists and slideshows
- `ui/widgets/shared/` provides application-wide shared widgets including custom app bar, bottom navigation, and loading indicators

**Theme**

The `ui/theme/app_theme.dart` file configures Material Design 3 theming with consistent color schemes and typography.

**Delegates**

The `ui/delegates/search_movies_delegate.dart` implements search delegate for the app bar search functionality.

## Key Points

This project demonstrates several important Flutter development patterns:

- **Clean Architecture** separates domain, data, and presentation layers with clear dependency flows

- **Riverpod State Management** provides efficient reactive state handling with StateNotifierProvider for complex state logic

- **Repository Pattern** abstracts data source implementations allowing flexible switching between different backends

- **Mapper Pattern** transforms data between API models and domain entities maintaining separation of concerns

- **GoRouter Navigation** enables declarative type-safe routing with deep linking support

- **Material Design 3** implements modern theming with dynamic color schemes

- **API Integration** demonstrates Dio HTTP client configuration with environment-based API keys

## Example Workflow

The application follows this workflow when displaying movies:

1. User opens the application and navigates to the home screen
  
2. `HomeView` initializes providers loading movies from each category
3. `MoviedbDatasource` fetches data from TheMovieDb API using environment API key
4. API responses map to domain entities through `MovieMapper`
5. `MoviesNotifier` manages pagination and state updates
6. UI rebuilds displaying movie lists with `MoviesHorizontalListview` widgets
7. User taps a movie card triggering navigation to `MovieScreen`
8. `MovieScreen` loads detailed movie information and cast data
9.  `MovieInfoProvider` caches loaded movies preventing duplicate API calls
10. `ActorsByMovieProvider` fetches and displays cast information
11. User searches movies triggering `SearchMoviesDelegate`
12. Search results display in a Material search overlay

> Made with '\u{2665}' (♥) by Jesús Domínguez [@jdomingu19](https://github.com/jdomingu19/)
