import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';

import '../../repositories/workout_repository.dart';

part 'workout_bloc.freezed.dart';
part 'workout_event.dart';
part 'workout_state.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final WorkoutRepository repository = GetIt.instance<WorkoutRepository>();

  WorkoutBloc() : super(const WorkoutState.initial()) {
    on<LoadWorkouts>(_onLoadWorkouts);
    on<AddWorkout>(_onAddWorkout);
    on<UpdateWorkout>(_onUpdateWorkout);
    on<DeleteWorkout>(_onDeleteWorkout);
  }

  Future<void> _onLoadWorkouts(
      LoadWorkouts event, Emitter<WorkoutState> emit) async {
    emit(const WorkoutState.loading());
    try {
      final workouts = await repository.getAllWorkouts();
      emit(WorkoutState.loaded(workouts));
    } catch (e) {
      emit(WorkoutState.error('Failed to load workouts: ${e.toString()}'));
    }
  }

  Future<void> _onAddWorkout(
      AddWorkout event, Emitter<WorkoutState> emit) async {
    try {
      await repository.createWorkout(event.workout.sets);
      final updatedWorkouts = await repository.getAllWorkouts();
      emit(WorkoutState.loaded(updatedWorkouts));
    } catch (e) {
      emit(WorkoutState.error('Failed to add workout: ${e.toString()}'));
    }
  }

  Future<void> _onUpdateWorkout(
      UpdateWorkout event, Emitter<WorkoutState> emit) async {
    try {
      await repository.updateWorkout(event.workout);
      final updatedWorkouts = await repository.getAllWorkouts();
      emit(WorkoutState.loaded(updatedWorkouts));
    } catch (e) {
      emit(WorkoutState.error('Failed to update workout: ${e.toString()}'));
    }
  }

  Future<void> _onDeleteWorkout(
      DeleteWorkout event, Emitter<WorkoutState> emit) async {
    try {
      await repository.deleteWorkout(event.id);
      final updatedWorkouts = await repository.getAllWorkouts();
      emit(WorkoutState.loaded(updatedWorkouts));
    } catch (e) {
      emit(WorkoutState.error('Failed to delete workout: ${e.toString()}'));
    }
  }
}
