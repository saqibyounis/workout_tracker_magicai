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
  final DateTime workoutDate;

  WorkoutSetBloc(
      {required this.workoutDate,
      required this.workoutRepository,
      required this.workoutId})
      : super(const WorkoutSetState(isLoading: true)) {
    on<AddSet>(_onAddSet);
    on<RemoveSet>(_onRemoveSet);
    on<UpdateSet>(_onUpdateSet);
    on<LoadSetsForWorkout>(_onLoadSetsForWorkout);
  }

  // Load sets for a specific workout
  Future<void> _onLoadSetsForWorkout(
      LoadSetsForWorkout event, Emitter<WorkoutSetState> emit) async {
    try {
      final workout = await workoutRepository.getWorkoutById(event.workoutId,
          dateTime: workoutDate);
      if (workout != null) {
        emit(state.copyWith(isLoading: false, workout: workout));
      } else {
        emit(state.copyWith(errorMessage: 'Workout not found'));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Failed to add set: ${e.toString()}'));
    }
  }

  // Add a set to the workout
  Future<void> _onAddSet(AddSet event, Emitter<WorkoutSetState> emit) async {
    try {
      Workout? workout =
          await workoutRepository.getWorkoutById(event.workoutId);
      if (workout != null) {
        event.workoutSet.workout.target = workout;
        workout.sets.insert(0, event.workoutSet);
        await workoutRepository.updateWorkout(workout!);
        workout = await workoutRepository.getWorkoutById(event.workoutId);

        emit(state.copyWith(workout: workout?..sets.reversed.toList()));
      } else {
        emit(state.copyWith(errorMessage: 'Workout not found'));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Failed to add set: ${e.toString()}'));
    }
  }

  // Remove a set from the workout
  Future<void> _onRemoveSet(
      RemoveSet event, Emitter<WorkoutSetState> emit) async {
    try {
      Workout? workout =
          await workoutRepository.getWorkoutById(event.workoutId);
      if (workout != null) {
        workout.sets.removeWhere((set) => set.id == event.setId);
        await workoutRepository.deleteWorkoutSet(event.setId);
        workout = await workoutRepository.getWorkoutById(event.workoutId);
        emit(state.copyWith(workout: workout));
      } else {
        emit(state.copyWith(errorMessage: 'Workout not found'));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Failed to add set: ${e.toString()}'));
    }
  }

  // Update a set in the workout
  Future<void> _onUpdateSet(
      UpdateSet event, Emitter<WorkoutSetState> emit) async {
    try {
      await workoutRepository.updateWorkoutSet(event.workoutSet);
      Workout? workout = await workoutRepository.getWorkoutById(workoutId);
      if (workout != null) {
        workout.setstatus(WorkoutStatus.inProgress);
        workoutRepository.updateWorkout(workout);
      } else {
        emit(state.copyWith(errorMessage: 'Workout not found'));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Failed to add set: ${e.toString()}'));
    }
  }
}
