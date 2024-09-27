part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.loadWorkouts() = LoadWorkouts;
  const factory WorkoutEvent.addWorkout(Workout workout) = AddWorkout;
  const factory WorkoutEvent.updateWorkout(Workout workout) = UpdateWorkout;
  const factory WorkoutEvent.deleteWorkout(int id) = DeleteWorkout;
}
