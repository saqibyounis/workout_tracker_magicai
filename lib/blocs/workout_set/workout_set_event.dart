part of 'workout_set_bloc.dart';

@freezed
class WorkoutSetEvent with _$WorkoutSetEvent {
  const factory WorkoutSetEvent.addSet(WorkoutSet workoutSet, int workoutId) =
      AddSet;
  const factory WorkoutSetEvent.removeSet(int setId, int workoutId) = RemoveSet;
  const factory WorkoutSetEvent.updateSet(
      WorkoutSet workoutSet, int workoutId) = UpdateSet;
  const factory WorkoutSetEvent.loadSetsForWorkout(int workoutId) =
      LoadSetsForWorkout;
}
