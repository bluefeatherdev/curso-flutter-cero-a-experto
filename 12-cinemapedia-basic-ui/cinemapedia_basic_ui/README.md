# Cinemapedia Basic App

A Flutter application demonstrating clean architecture principles with The Movie Database (TMDb) API integration. This example showcases Riverpod state management, GoRouter navigation, Material Design 3 theming, and separation of concerns between domain, data, and presentation layers.

## Structure

The project follows clean architecture pattern with clear separation between core business logic, data access, and user interface:

- `lib/main.dart` - Application entry point configuring `MaterialApp.router` with `ProviderScope` for Riverpod and environment variable loading via `flutter_dotenv`

- `lib/core/constants/environment.dart` - Environment configuration file containing API keys and endpoints loaded from `.env` file

- `lib/core/router/app_router.dart` - Centralized routing configuration using `go_router` package with declarative route definitions and navigation paths

- `lib/core/domain/datasources/movies_datasource.dart` - Abstract datasource interface defining contract for movie data retrieval operations

- `lib/core/domain/entities/movie_entity.dart` - Domain entity representing core movie data model independent of external API schemas

- `lib/core/domain/repositories/movies_repository.dart` - Abstract repository interface defining business logic contracts for movie operations

- `lib/core/data/datasources/moviedb_datasource.dart` - Concrete datasource implementation handling TMDb API communication and HTTP requests

- `lib/core/data/models/moviedb_response.dart` - Data model representing TMDb API response structure with JSON serialization

- `lib/core/data/models/movie_moviedb.dart` - Data model representing individual movie objects from TMDb API with fields mapping

- `lib/core/data/mappers/movie_mapper.dart` - Mapper class converting `movie_moviedb` data models to `movie_entity` domain entities

- `lib/core/data/repositories/movie_repository_implementation.dart` - Concrete repository implementation orchestrating datasource calls and entity mapping

- `lib/ui/theme/app_theme.dart` - Theme configuration class implementing Material 3 design system with color schemes and typography

- `lib/ui/providers/providers.dart` - Barrel file exporting all Riverpod providers for centralized state management access

- `lib/ui/providers/movies/movies_repository_provider.dart` - Riverpod provider exposing `MoviesRepository` instance for dependency injection

- `lib/ui/providers/movies/movies_provider.dart` - Riverpod state provider managing movies list state and handling API data fetching

- `lib/ui/screens/screens.dart` - Barrel file exporting all screen widgets for simplified imports across the application

- `lib/ui/screens/movies/home_screen.dart` - Main screen displaying paginated movies list with loading states and error handling

## Key Points

The application implements clean architecture with complete separation between domain layer (business logic), data layer (API communication), and presentation layer (UI). The `movies_datasource` abstract class defines the contract for data retrieval, while `moviedb_datasource` provides concrete TMDb API implementation using HTTP client operations.

Entity mapping occurs in the `movie_mapper` class converting TMDb-specific `MovieMovieDb` models into domain-agnostic `MovieEntity` objects. This decouples UI components from external API schema changes, enabling robust architecture evolution.

Riverpod state management handles reactive UI updates through `movies_repository_provider` exposing repository instance and `movies_provider` managing movies list state. The `ProviderScope` widget at application root enables provider access throughout the widget tree without explicit passing.

Environment configuration is managed through `flutter_dotenv` loading `.env` file at application startup, storing sensitive API keys and endpoints securely outside version control. The `environment.dart` constants file accesses these values for datasource initialization.

GoRouter enables declarative navigation with type-safe route definitions and automatic transition animations. Named routes and path-based navigation provide flexible routing options matching different user interaction patterns.

Material Design 3 theming via `AppTheme` class provides consistent visual styling across all screens with color schemes, typography, and component styling configured centrally.

## Example Workflow

Launch the application triggering `main()` to load environment variables from `.env` file and initialize `ProviderScope` with Riverpod.

The `home_screen` renders and initializes `movies_provider` triggering `moviedb_datasource` to fetch initial movies batch from TMDb API.

`movies_datasource` executes HTTP GET request to TMDb endpoint using API key from environment configuration.

Response JSON maps to `moviedb_response` data model, then mapper converts individual `movie_moviedb` objects to `movie_entity` domain entities.

`movies_provider` state updates with fetched entity list triggering `home_screen` rebuild displaying movies in scrollable list.

User scrolls to list bottom triggering pagination logic fetching next movies batch through same datasource-mapper-entity flow.

Navigation routes configured in `app_router` enable screen transitions with automatic animation and state preservation across route changes.

Theme configuration from `app_theme` applies Material 3 styling consistently across all rendered screens and components.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
