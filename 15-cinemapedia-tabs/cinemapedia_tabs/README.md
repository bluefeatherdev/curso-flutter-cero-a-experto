# Cinemapedia Tabs

A Flutter application demonstrating clean architecture principles with The Movie Database (TMDb) API integration. This example showcases Riverpod state management, GoRouter navigation, Material Design 3 theming, movie search functionality, actor information display, and comprehensive separation of concerns between domain, data, and presentation layers.


## Structure

The project follows clean architecture pattern with clear separation between core business logic, data access, and user interface:


- `lib/main.dart` - Application entry point configuring `MaterialApp.router` with `ProviderScope` for Riverpod and environment variable loading via `flutter_dotenv`

- `lib/core/constants/environment.dart` - Environment configuration file containing API keys and endpoints loaded from `.env` file

- `lib/core/router/app_router.dart` - Centralized routing configuration using `go_router` package with declarative route definitions and navigation paths for home and movie detail screens

- `lib/core/domain/datasources/movies_datasource.dart` - Abstract datasource interface defining contract for movie data retrieval operations including search functionality

- `lib/core/domain/datasources/actors_datasource.dart` - Abstract datasource interface defining contract for actor data retrieval operations by movie identifier

- `lib/core/domain/entities/movie_entity.dart` - Domain entity representing core movie data model independent of external API schemas

- `lib/core/domain/entities/actor_entity.dart` - Domain entity representing actor information independent of TMDb API structure

- `lib/core/domain/repositories/movies_repository.dart` - Abstract repository interface defining business logic contracts for movie operations and search

- `lib/core/domain/repositories/actors_repository.dart` - Abstract repository interface defining business logic contracts for actor data access

- `lib/core/data/datasources/moviedb_datasource.dart` - Concrete datasource implementation handling TMDb API communication for movies, pagination, and search queries

- `lib/core/data/datasources/actors_moviedb_datasource.dart` - Concrete datasource implementation handling TMDb API communication for actor credits and cast information

- `lib/core/data/models/moviedb/moviedb_response.dart` - Data model representing TMDb API response structure for movies with JSON serialization

- `lib/core/data/models/moviedb/movie_moviedb.dart` - Data model representing individual movie objects from TMDb API with field mapping and serialization

- `lib/core/data/models/moviedb/movie_details.dart` - Data model representing detailed movie information including revenue, budget, and runtime from TMDb API

- `lib/core/data/models/moviedb/credits_response.dart` - Data model representing cast and credits response from TMDb API with actor information

- `lib/core/data/mappers/movie_mapper.dart` - Mapper class converting `movie_moviedb` and `movie_details` data models to `movie_entity` domain entities

- `lib/core/data/mappers/actor_mapper.dart` - Mapper class converting TMDb cast data to `actor_entity` domain entities for presentation

- `lib/core/data/repositories/movie_repository_implementation.dart` - Concrete repository implementation orchestrating datasource calls, entity mapping, and business logic for movies

- `lib/core/data/repositories/actors_repository_implementation.dart` - Concrete repository implementation handling actor data retrieval and entity conversion

- `lib/core/helpers/human_formats.dart` - Utility helper functions for formatting human-readable data like currency, dates, and numbers

- `lib/ui/theme/app_theme.dart` - Theme configuration class implementing Material Design 3 system with color schemes and typography

- `lib/ui/delegates/search_movies_delegate.dart` - Custom search delegate implementing search functionality with query history and movie suggestions

- `lib/ui/providers/providers.dart` - Barrel file exporting all Riverpod providers for centralized state management access

- `lib/ui/providers/movies/movies_repository_provider.dart` - Riverpod provider exposing `MoviesRepository` instance for dependency injection

- `lib/ui/providers/movies/movies_provider.dart` - Riverpod state provider managing movies list state and handling API data fetching with pagination

- `lib/ui/providers/movies/movies_slideshow_provider.dart` - Provider computing filtered movie subset for carousel slideshow display

- `lib/ui/providers/movies/movies_info_provider.dart` - Provider fetching detailed movie information from datasource for individual movie screens

- `lib/ui/providers/movies/initial_loading_provider.dart` - Provider managing initial application loading state during startup

- `lib/ui/providers/actors/actors_repository_provider.dart` - Riverpod provider exposing `ActorsRepository` instance for actor data access

- `lib/ui/providers/actors/actors_by_movie_provider.dart` - Provider fetching and caching actor credits for specific movies

- `lib/ui/providers/search/search_movies_provider.dart` - StateNotifier provider managing search functionality with query state and search results

- `lib/ui/screens/screens.dart` - Barrel file exporting all screen widgets for simplified imports across the application

- `lib/ui/screens/movies/home_screen.dart` - Main screen displaying paginated movies in horizontal lists with loading states, error handling, and search functionality

- `lib/ui/screens/movies/movie_screen.dart` - Detailed movie view screen displaying full movie information including cast, rating, overview, and navigation

- `lib/ui/widgets/movies/movies_slideshow.dart` - Widget component rendering carousel slideshow with animated movie cards using `card_swiper` package

- `lib/ui/widgets/movies/movies_horizontal_listview.dart` - Reusable widget displaying horizontal scrollable list of movies with pagination support and item callbacks

- `lib/ui/widgets/shared/custom_appbar.dart` - Custom application bar widget providing consistent header styling with search integration across screens

- `lib/ui/widgets/shared/custom_bottom_navigation.dart` - Custom bottom navigation widget enabling screen transitions and route navigation

- `lib/ui/widgets/shared/full_screen_loader.dart` - Full-screen loading indicator displayed during initial data fetching operations


## Key Points

The application implements clean architecture with complete separation between domain layer (business logic), data layer (API communication), and presentation layer (UI). The `movies_datasource` and `actors_datasource` abstract classes define contracts for data retrieval, while concrete implementations provide TMDb API integration using HTTP client operations through `dio` package.

Entity mapping occurs in `movie_mapper` and `actor_mapper` classes converting TMDb-specific data models into domain-agnostic entity objects. This decoupling enables robust architecture that remains resilient to external API schema changes.

Riverpod state management handles reactive UI updates through `movies_repository_provider` and `actors_repository_provider` exposing repository instances, plus `movies_provider` and `actors_by_movie_provider` managing application state. The `ProviderScope` widget at application root enables provider access throughout the widget tree without explicit passing.

Search functionality implements custom `SearchMoviesDelegate` enabling query-based movie filtering with debouncing and caching. The `search_movies_provider` manages search state and results reactively.

Environment configuration uses `flutter_dotenv` loading `.env` file at startup, storing sensitive API keys and endpoints outside version control. The `environment.dart` constants file accesses these values for datasource initialization.

GoRouter enables declarative navigation with type-safe route definitions including home screen and movie detail screen transitions. Named routes and path-based parameters provide flexible routing matching different user interaction patterns.

Material Design 3 theming via `AppTheme` class provides consistent visual styling across all screens with color schemes, typography, and component configuration.

Pagination uses `StateNotifier` pattern tracking current page and loading state, automatically appending new results without resetting UI state when users scroll to list bottom.

Animation libraries including `animate_do` and `card_swiper` enhance user experience with smooth transitions, fade-ins, slide animations, and carousel effects for movie displays.

Human format utilities convert API data (currency, dates, numbers) into user-friendly readable formats across all screens.


## Example Workflow

Launch the application triggering `main()` to load environment variables from `.env` file and initialize `ProviderScope` with Riverpod configuration.

The `home_screen` renders initializing `movies_provider` which triggers `moviedb_datasource` to fetch initial movies batch from TMDb API.

`moviedb_datasource` executes HTTP GET request to TMDb endpoint using API key from environment configuration and response mapping.

Response JSON maps to `moviedb_response` data model, then mapper converts individual `movie_moviedb` objects to `movie_entity` domain entities.

`movies_provider` state updates with fetched entity list triggering `home_screen` rebuild displaying movies in animated carousel and horizontal scrollable lists.

User scrolls to list bottom triggering pagination logic fetching next movies batch through identical datasource-mapper-entity flow.

User initiates search by tapping search icon opening `SearchMoviesDelegate` with query input field.

Search queries invoke `search_movies_provider` triggering `moviedb_datasource` search endpoint with user query string.

Search results display in delegate UI with option selection navigating to movie detail screen.

User selects movie navigating to `movie_screen` via GoRouter route passing movie identifier as parameter.

`movie_screen` initializes `movies_info_provider` fetching detailed movie data and `actors_by_movie_provider` fetching cast information.

`actors_moviedb_datasource` retrieves credits data from TMDb API converting to `actor_entity` objects via `actor_mapper`.

Movie screen renders complete information including title, overview, rating, cast list, budget, revenue, and runtime with human formatting.

Theme configuration from `app_theme` applies Material 3 styling consistently across all screens, navigation, and components throughout user interaction flows.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@jdomingu19](https://github.com/jdomingu19)
