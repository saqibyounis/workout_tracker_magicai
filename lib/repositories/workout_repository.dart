import 'package:objectbox/objectbox.dart';

import '../models/workout_model.dart';
import '../models/workout_set_model.dart';
import '../objectbox.g.dart';

class WorkoutRepository {
  final Store store;

  WorkoutRepository(this.store);

  Future<Workout> createWorkout(DateTime date, List<WorkoutSet> sets) async {
    final workout = Workout(date: date);

    final workoutBox = store.box<Workout>();
    workoutBox.put(workout);

    for (var set in sets) {
      set.workout.target = workout;
      workout.sets.add(set);
      store.box<WorkoutSet>().put(set);
    }

    return workout;
  }

  Future<List<Workout>> getAllWorkouts() async {
    final workoutBox = store.box<Workout>();
    return workoutBox.getAll();
  }

  Future<void> deleteWorkout(int workoutId) async {
    final workoutBox = store.box<Workout>();
    final workout = workoutBox.get(workoutId);

    if (workout != null) {
      final setBox = store.box<WorkoutSet>();
      setBox.removeMany(workout.sets.map((set) => set.id).toList());

      workoutBox.remove(workoutId);
    }
  }

  Future<void> updateWorkout(Workout workout) async {
    final workoutBox = store.box<Workout>();
    workoutBox.put(workout);
  }

  Future<void> updateWorkoutSet(WorkoutSet set) async {
    final setBox = store.box<WorkoutSet>();
    setBox.put(set);
  }
}
