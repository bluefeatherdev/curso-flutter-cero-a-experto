# Cinemapedia Search Movies

A Flutter application demonstrating clean architecture principles with The Movie Database (TMDb) API integration. This example showcases Riverpod state management, GoRouter navigation, Material Design 3 theming, and comprehensive movie information display with actor details and advanced filtering.

## Structure

The project follows clean architecture pattern with clear separation between core business logic, data access, and user interface:


- `lib/main.dart` - Application entry point configuring `MaterialApp.router` with `ProviderScope` for Riverpod and environment variable loading via `flutter_dotenv`


- `lib/core/constants/environment.dart` - Environment configuration file containing API keys and endpoints loaded from `.env` file


- `lib/core/router/app_router.dart` - Centralized routing configuration using `go_router` package with declarative route definitions for home and movie detail navigation paths


- `lib/core/domain/datasources/movies_datasource.dart` - Abstract datasource interface defining contract for movie data retrieval operations including details and popular movies


- `lib/core/domain/datasources/actors_datasource.dart` - Abstract datasource interface defining contract for actor data retrieval and cast information


- `lib/core/domain/entities/movie_entity.dart` - Domain entity representing core movie data model independent of external API schemas


- `lib/core/domain/entities/actor_entity.dart` - Domain entity representing actor information with biographical and filmography details


- `lib/core/domain/repositories/movies_repository.dart` - Abstract repository interface defining business logic contracts for movie operations


- `lib/core/domain/repositories/actors_repository.dart` - Abstract repository interface defining business logic contracts for actor operations


- `lib/core/data/datasources/moviedb_datasource.dart` - Concrete datasource implementation handling TMDb API communication for movies with HTTP requests and response parsing


- `lib/core/data/datasources/actors_moviedb_datasource.dart` - Concrete datasource implementation handling TMDb API communication for actor credits and cast information


- `lib/core/data/models/moviedb/moviedb_response.dart` - Data model representing TMDb API response structure for movie lists with JSON serialization


- `lib/core/data/models/moviedb/movie_moviedb.dart` - Data model representing individual movie objects from TMDb API with fields mapping


- `lib/core/data/models/moviedb/movie_details.dart` - Data model representing detailed movie information including runtime, budget, and revenue


- `lib/core/data/models/moviedb/credits_response.dart` - Data model representing cast and crew information from TMDb API with actor details


- `lib/core/data/mappers/movie_mapper.dart` - Mapper class converting `movie_moviedb` and `movie_details` data models to `movie_entity` domain entities


- `lib/core/data/mappers/actor_mapper.dart` - Mapper class converting TMDb actor objects to `actor_entity` domain entities


- `lib/core/data/repositories/movie_repository_implementation.dart` - Concrete repository implementation orchestrating datasource calls for movies and entity mapping


- `lib/core/data/repositories/actors_repository_implementation.dart` - Concrete repository implementation orchestrating datasource calls for actors and entity mapping


- `lib/core/helpers/human_formats.dart` - Utility helper functions for formatting human-readable data like dates, numbers, and currency values


- `lib/ui/theme/app_theme.dart` - Theme configuration class implementing Material 3 design system with color schemes and typography


- `lib/ui/providers/providers.dart` - Barrel file exporting all Riverpod providers for centralized state management access


- `lib/ui/providers/movies/movies_repository_provider.dart` - Riverpod provider exposing `MoviesRepository` instance for dependency injection


- `lib/ui/providers/movies/movies_provider.dart` - Riverpod state provider managing movies list state and handling API data fetching with pagination


- `lib/ui/providers/movies/movies_slideshow_provider.dart` - Provider computing filtered movie subset for carousel slideshow display from main movies list


- `lib/ui/providers/movies/initial_loading_provider.dart` - Provider managing initial application loading state during startup and data fetching


- `lib/ui/providers/movies/movies_info_provider.dart` - Provider managing detailed movie information state including movie details and credits


- `lib/ui/providers/actors/actors_repository_provider.dart` - Riverpod provider exposing `ActorsRepository` instance for dependency injection


- `lib/ui/providers/actors/actors_by_movie_provider.dart` - Provider managing actor list state for specific movies with cast filtering


- `lib/ui/screens/screens.dart` - Barrel file exporting all screen widgets for simplified imports across the application


- `lib/ui/screens/movies/home_screen.dart` - Main screen displaying paginated movies in horizontal lists with loading states, error handling, and slideshow carousel


- `lib/ui/screens/movies/movie_screen.dart` - Detailed movie information screen displaying title, synopsis, ratings, cast, and additional metadata


- `lib/ui/widgets/movies/movies_slideshow.dart` - Widget component rendering carousel slideshow with animated movie cards using `card_swiper` package


- `lib/ui/widgets/movies/movies_horizontal_listview.dart` - Reusable widget displaying horizontal scrollable list of movies with pagination support and error states


- `lib/ui/widgets/shared/custom_appbar.dart` - Custom application bar widget providing consistent header styling with search capability


- `lib/ui/widgets/shared/custom_bottom_navigation.dart` - Custom bottom navigation widget enabling screen transitions and route navigation


- `lib/ui/widgets/shared/full_screen_loader.dart` - Full-screen loading indicator displayed during initial data fetching operations

## Key Points

The application implements clean architecture with complete separation between domain layer (business logic), data layer (API communication), and presentation layer (UI). The `movies_datasource` and `actors_datasource` abstract classes define contracts for data retrieval, while `moviedb_datasource` and `actors_moviedb_datasource` provide concrete TMDb API implementations using HTTP client operations.

Entity mapping occurs in `movie_mapper` and `actor_mapper` classes converting TMDb-specific models into domain-agnostic entity objects. This decouples UI components from external API schema changes, enabling robust architecture evolution.

Riverpod state management handles reactive UI updates through `movies_repository_provider` and `actors_repository_provider` exposing repository instances. The `movies_provider` manages movies list state with pagination support, while `movies_info_provider` handles detailed movie information. The `ProviderScope` widget at application root enables provider access throughout the widget tree.

Environment configuration is managed through `flutter_dotenv` loading `.env` file at application startup, storing sensitive API keys outside version control. The `environment.dart` constants file accesses these values for datasource initialization.

GoRouter enables declarative navigation with type-safe route definitions for home and movie detail screens. Named routes provide flexible routing options matching different user interaction patterns with automatic transition animations.

Material Design 3 theming via `AppTheme` class provides consistent visual styling across all screens with color schemes and typography configured centrally.

Pagination implementation uses `StateNotifier` pattern tracking current page number and loading state, automatically appending new results to existing list without resetting UI state.

Movie details and cast information integrate multiple API endpoints with `movie_details` and `credits_response` models providing comprehensive metadata beyond basic movie information.

Human formatting utilities enable readable presentation of dates, revenue figures, and runtime durations across movie detail screens.

## Example Workflow

Launch the application triggering `main()` to load environment variables from `.env` file and initialize `ProviderScope` with Riverpod.

The `home_screen` renders and initializes `movies_provider` triggering `moviedb_datasource` to fetch initial popular movies batch from TMDb API.

`moviedb_datasource` executes HTTP GET request to TMDb endpoint using API key from environment configuration, parsing JSON response.

Response JSON maps to `moviedb_response` data model, then mapper converts individual `movie_moviedb` objects to `movie_entity` domain entities for display.

`movies_provider` state updates with fetched entity list triggering `home_screen` rebuild displaying movies in horizontal scrollable lists and slideshow carousel.

User scrolls to list bottom triggering pagination logic fetching next movies batch through same datasource-mapper-entity flow appending to existing list.

User taps on movie card triggering `GoRouter` navigation to `movie_screen` displaying detailed information.

`movie_screen` initializes `movies_info_provider` with selected movie ID triggering `moviedb_datasource` to fetch `movie_details` and `credits_response` from API.

Mapper converts detailed movie data to `movie_entity` and credits response to `actor_entity` list for comprehensive display.

Screen renders movie details including synopsis, ratings, runtime, budget, revenue, and cast members with actor information.

User navigates back to home screen preserving scroll position and state through Riverpod provider management.

Theme configuration from `app_theme` applies Material 3 styling consistently across all rendered screens, components, and transitions.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
