part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = _Initial;
  const factory WorkoutState.loading() = _Loading;
  const factory WorkoutState.loaded(List<Workout> workouts) = _Loaded;
  const factory WorkoutState.error(String message) = _Error;
}
