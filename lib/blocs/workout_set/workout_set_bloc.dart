import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/workout_model.dart';
import '../../models/workout_set_model.dart';
import '../../repositories/workout_repository.dart';

part 'workout_set_bloc.freezed.dart';
part 'workout_set_event.dart';
part 'workout_set_state.dart';

class WorkoutSetBloc extends Bloc<WorkoutSetEvent, WorkoutSetState> {
  final WorkoutRepository workoutRepository;
  final int workoutId;

  WorkoutSetBloc({required this.workoutRepository, required this.workoutId})
      : super(const WorkoutSetState.initial()) {
    on<AddSet>(_onAddSet);
    on<RemoveSet>(_onRemoveSet);
    on<UpdateSet>(_onUpdateSet);
    on<LoadSetsForWorkout>(_onLoadSetsForWorkout);
  }

  // Load sets for a specific workout
  Future<void> _onLoadSetsForWorkout(
      LoadSetsForWorkout event, Emitter<WorkoutSetState> emit) async {
    emit(const WorkoutSetState.loading());
    try {
      final workout = await workoutRepository.getWorkoutById(event.workoutId);
      if (workout != null) {
        emit(WorkoutSetState.loaded(workout));
      } else {
        emit(const WorkoutSetState.error('Workout not found'));
      }
    } catch (e) {
      emit(WorkoutSetState.error(
          'Failed to load workout sets: ${e.toString()}'));
    }
  }

  // Add a set to the workout
  Future<void> _onAddSet(AddSet event, Emitter<WorkoutSetState> emit) async {
    emit(const WorkoutSetState.loading());
    try {
      final workout = await workoutRepository.getWorkoutById(event.workoutId);
      if (workout != null) {
        event.workoutSet.workout.target = workout;
        workout.sets.add(event.workoutSet);
        await workoutRepository.updateWorkout(workout);
        emit(WorkoutSetState.loaded(workout));
      } else {
        emit(const WorkoutSetState.error('Workout not found'));
      }
    } catch (e) {
      emit(WorkoutSetState.error('Failed to add set: ${e.toString()}'));
    }
  }

  // Remove a set from the workout
  Future<void> _onRemoveSet(
      RemoveSet event, Emitter<WorkoutSetState> emit) async {
    emit(const WorkoutSetState.loading());
    try {
      final workout = await workoutRepository.getWorkoutById(event.workoutId);
      if (workout != null) {
        workout.sets.removeWhere((set) => set.id == event.setId);
        await workoutRepository.deleteWorkoutSet(event.setId);
        emit(WorkoutSetState.loaded(workout));
      } else {
        emit(const WorkoutSetState.error('Workout not found'));
      }
    } catch (e) {
      emit(WorkoutSetState.error('Failed to remove set: ${e.toString()}'));
    }
  }

  // Update a set in the workout
  Future<void> _onUpdateSet(
      UpdateSet event, Emitter<WorkoutSetState> emit) async {
    emit(const WorkoutSetState.loading());
    try {
      await workoutRepository.updateWorkoutSet(event.workoutSet);
      final workout = await workoutRepository.getWorkoutById(workoutId);
      if (workout != null) {
        emit(WorkoutSetState.loaded(workout));
      } else {
        emit(const WorkoutSetState.error('Workout not found'));
      }
    } catch (e) {
      emit(WorkoutSetState.error('Failed to update set: ${e.toString()}'));
    }
  }
}
