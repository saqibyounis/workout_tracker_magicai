
# Workout Tracker App

This is a **Workout Tracker App** built using **Flutter**. The app allows users to track their workout routines, including exercises, sets, weights, and repetitions. It also supports light/dark modes and multiple languages: **English** and **Cymro** (Welsh).

## Features

- **Bloc Pattern** for state management
- **Freezed** for immutability and Union types
- **ObjectBox** for local data storage
- **GetIt** for dependency injection
- **Light/Dark Mode** support
- **Localization** in **English** and **Cymro** (Welsh)
- Test coverage for blocs, repositories, and UI widgets

## Getting Started

### Prerequisites

To run this app, ensure you have:

- **Flutter SDK** installed
- **ObjectBox Flutter bindings** set up
- Localization files generated (`intl` package)

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/workout-tracker.git
   ```

2. **Navigate to the project directory**:

   ```bash
   cd workout-tracker
   ```

3. **Install dependencies**:

   ```bash
   flutter pub get
   ```

4. **Generate Freezed and ObjectBox files**:

   ```bash
   flutter pub run build_runner build
   ```

5. **Run the app**:

   ```bash
   flutter run
   ```

## Project Structure

- **bloc/**: Contains all the business logic components following the Bloc pattern.
- **models/**: Data models for workouts and sets.
- **repositories/**: Handles data fetching and updating (integrating ObjectBox).
- **screens/**: UI components for various app screens.
- **test/**: Unit tests for Bloc, repository, and UI components.

## Technology Choices

### Bloc Pattern with Freezed
- The **Bloc pattern** is used for state management to separate business logic from the UI layer. This ensures a scalable and testable architecture.
- **Freezed** is used for creating immutable data classes and handling union types, making it easier to manage different states in the app (e.g., loading, success, error states).

### ObjectBox
- **ObjectBox** is chosen as the database because of its fast performance and minimal configuration. It helps efficiently store and query the workout data, ensuring smooth performance on mobile devices.

### GetIt
- **GetIt** is used for dependency injection, allowing easy access to the application's services and models throughout the app without tightly coupling the components.

### Localization
- The app supports **English** and **Cymro** (Welsh) to cater to a broader audience. Localization is implemented using the `intl` package, with language files located in the `generated` folder.

### Light/Dark Mode
- The app supports **light** and **dark** themes to enhance the user experience in different lighting conditions.

## Testing

The app includes comprehensive tests for business logic, data handling, and UI:

- **Bloc Tests**: Verifies the behavior of different states and events.
- **Repository Tests**: Ensures data is fetched and updated correctly.
- **Widget Tests**: Checks the correctness of UI components.

Run the tests using:

```bash
flutter test
```