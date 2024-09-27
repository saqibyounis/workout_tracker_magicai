import 'package:mockito/mockito.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';
import 'package:workout_tracker_magicai/repositories/workout_repository.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {
  final Map<int, Workout> _workouts = {};
  final Map<int, WorkoutSet> _workoutSets = {};
  int _workoutIdCounter = 1;
  int _workoutSetIdCounter = 1;

  @override
  Future<Workout> createWorkout(List<WorkoutSet> sets) async {
    final workout = Workout(id: _workoutIdCounter++, date: DateTime.now());
    for (var set in sets) {
      set.id = _workoutSetIdCounter++;
      set.workout.target = workout;
      workout.sets.add(set);
      _workoutSets[set.id] = set;
    }
    _workouts[workout.id] = workout;
    return workout;
  }

  @override
  Future<List<Workout>> getAllWorkouts() async {
    return _workouts.values.toList();
  }

  @override
  Future<void> deleteWorkout(int workoutId) async {
    final workout = _workouts[workoutId];
    if (workout != null) {
      for (var set in workout.sets) {
        _workoutSets.remove(set.id);
      }
      _workouts.remove(workoutId);
    }
  }

  @override
  Future<void> updateWorkout(Workout workout) async {
    if (_workouts.containsKey(workout.id)) {
      _workouts[workout.id] = workout;
    }
  }

  @override
  Future<void> updateWorkoutSet(WorkoutSet set) async {
    if (_workoutSets.containsKey(set.id)) {
      _workoutSets[set.id] = set;
    }
  }

  // Helper methods for testing
  void reset() {
    _workouts.clear();
    _workoutSets.clear();
    _workoutIdCounter = 1;
    _workoutSetIdCounter = 1;
  }

  Workout? getWorkout(int id) {
    return _workouts[id];
  }

  WorkoutSet? getWorkoutSet(int id) {
    return _workoutSets[id];
  }
}
