import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../models/workout_model.dart';
import '../models/workout_set_model.dart';
import '../objectbox.g.dart';

@injectable
class WorkoutRepository {
  static Store? _store; // Singleton store instance

  // Ensure the store is initialized only once
  Future<Store> _getStore() async {
    if (_store == null) {
      final appDocDir = await getApplicationDocumentsDirectory();
      final storePath = p.join(appDocDir.path, 'objectbox');
      _store = Store(getObjectBoxModel(), directory: storePath);
    }
    return _store!;
  }

  Future<Workout> createWorkout(List<WorkoutSet> sets) async {
    final store = await _getStore(); // Use the singleton store instance
    final workoutBox = store.box<Workout>();

    final workout = Workout(date: DateTime.now());
    workoutBox.put(workout);

    for (var set in sets) {
      set.workout.target = workout;
      workout.sets.add(set);
      store.box<WorkoutSet>().put(set);
    }

    return workout;
  }

  Future<List<Workout>> getAllWorkouts() async {
    final store = await _getStore(); // Use the singleton store instance
    final workoutBox = store.box<Workout>();
    return workoutBox.getAll();
  }

  Future<void> deleteWorkout(int workoutId) async {
    final store = await _getStore();
    final workoutBox = store.box<Workout>();
    final workout = workoutBox.get(workoutId);

    if (workout != null) {
      final setBox = store.box<WorkoutSet>();
      setBox.removeMany(workout.sets.map((set) => set.id).toList());

      workoutBox.remove(workoutId);
    }
  }

  Future<void> updateWorkout(Workout workout) async {
    final store = await _getStore();
    final workoutBox = store.box<Workout>();
    workoutBox.put(workout);
  }

  Future<void> updateWorkoutSet(WorkoutSet set) async {
    final store = await _getStore();
    final setBox = store.box<WorkoutSet>();
    setBox.put(set);
  }

  Future<Workout?> getWorkoutById(int workoutId) async {
    final store = await _getStore();
    if (workoutId != -1) {
      final workoutBox = store.box<Workout>();
      return workoutBox.get(workoutId);
    } else {
      return await createWorkout([]);
    }
  }

  Future<void> deleteWorkoutSet(int setId) async {
    final store = await _getStore();
    final setBox = store.box<WorkoutSet>();
    setBox.remove(setId);
  }

  // Method to close the store when done (e.g., during app termination)
  Future<void> closeStore() async {
    _store?.close();
    _store = null;
  }
}
