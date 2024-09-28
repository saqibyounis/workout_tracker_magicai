part of 'workout_set_bloc.dart';

@freezed
class WorkoutSetState with _$WorkoutSetState {
  const factory WorkoutSetState.initial() = _Initial;
  const factory WorkoutSetState.loading() = _Loading;
  const factory WorkoutSetState.loaded(Workout workout) = _Loaded;
  const factory WorkoutSetState.error(String message) = _Error;
}
