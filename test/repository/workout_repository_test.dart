import 'package:test/test.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';

import 'mock_workout_repository.dart';

void main() {
  late MockWorkoutRepository repository;

  setUp(() {
    repository = MockWorkoutRepository();
  });

  group('MockWorkoutRepository', () {
    test('createWorkout should create a new workout with sets', () async {
      final sets = [
        WorkoutSet(exercise: 'Squat', weight: 100, repetitions: 10),
        WorkoutSet(exercise: 'Bench Press', weight: 80, repetitions: 8),
      ];

      final workout = await repository.createWorkout(sets);

      expect(workout.id, equals(1));
      expect(workout.sets.length, equals(2));
      expect(repository.getWorkout(1), isNotNull);
      expect(repository.getWorkoutSet(1), isNotNull);
      expect(repository.getWorkoutSet(2), isNotNull);
    });

    test('getAllWorkouts should return all created workouts', () async {
      await repository.createWorkout(
          [WorkoutSet(exercise: 'Squat', weight: 100, repetitions: 10)]);
      await repository.createWorkout(
          [WorkoutSet(exercise: 'Bench Press', weight: 80, repetitions: 8)]);

      final workouts = await repository.getAllWorkouts();

      expect(workouts.length, equals(2));
      expect(workouts[0].id, equals(1));
      expect(workouts[1].id, equals(2));
    });

    test('deleteWorkout should remove the workout and its sets', () async {
      final workout = await repository.createWorkout([
        WorkoutSet(exercise: 'Squat', weight: 100, repetitions: 10),
        WorkoutSet(exercise: 'Bench Press', weight: 80, repetitions: 8),
      ]);

      await repository.deleteWorkout(workout.id);

      expect(repository.getWorkout(workout.id), isNull);
      expect(repository.getWorkoutSet(1), isNull);
      expect(repository.getWorkoutSet(2), isNull);

      final remainingWorkouts = await repository.getAllWorkouts();
      expect(remainingWorkouts.isEmpty, isTrue);
    });

    test('updateWorkout should modify an existing workout', () async {
      final workout = await repository.createWorkout([
        WorkoutSet(exercise: 'Squat', weight: 100, repetitions: 10),
      ]);

      final updatedDate = DateTime(2023, 1, 1);
      workout.date = updatedDate;

      await repository.updateWorkout(workout);

      final retrievedWorkout = repository.getWorkout(workout.id);
      expect(retrievedWorkout?.date, equals(updatedDate));
    });

    test('updateWorkoutSet should modify an existing workout set', () async {
      final workout = await repository.createWorkout([
        WorkoutSet(exercise: 'Squat', weight: 100, repetitions: 10),
      ]);

      final set = workout.sets.first;
      set.weight = 110;
      set.repetitions = 12;

      await repository.updateWorkoutSet(set);

      final retrievedSet = repository.getWorkoutSet(set.id);
      expect(retrievedSet?.weight, equals(110));
      expect(retrievedSet?.repetitions, equals(12));
    });

    test('reset should clear all data', () async {
      await repository.createWorkout(
          [WorkoutSet(exercise: 'Squat', weight: 100, repetitions: 10)]);
      await repository.createWorkout(
          [WorkoutSet(exercise: 'Bench Press', weight: 80, repetitions: 8)]);

      repository.reset();

      final workouts = await repository.getAllWorkouts();
      expect(workouts.isEmpty, isTrue);

      // Check that IDs are reset
      final newWorkout = await repository.createWorkout(
          [WorkoutSet(exercise: 'Deadlift', weight: 120, repetitions: 5)]);
      expect(newWorkout.id, equals(1));
      expect(newWorkout.sets.first.id, equals(1));
    });
  });
}
