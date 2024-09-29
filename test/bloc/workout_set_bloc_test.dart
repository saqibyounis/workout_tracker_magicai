import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:workout_tracker_magicai/blocs/workout_set/workout_set_bloc.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';
import 'package:workout_tracker_magicai/repositories/workout_repository.dart';

class MockWorkoutRepository extends Mock implements WorkoutRepository {}

void main() {
  late WorkoutSetBloc workoutSetBloc;
  late MockWorkoutRepository workoutRepository;

  final mockWorkoutSet = WorkoutSet(
    id: 1,
    exercise: 'Bench Press',
    weight: 80,
    repetitions: 10,
  );

  final mockWorkout = Workout(
    id: 1,
    date: DateTime.now(),
  )..sets.addAll([mockWorkoutSet]);

  setUp(() {
    workoutRepository = MockWorkoutRepository();

    workoutSetBloc = WorkoutSetBloc(
      workoutDate: DateTime.now(),
      workoutRepository: workoutRepository,
      workoutId: 1,
    );
  });

  group('WorkoutSetBloc Tests', () {
    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits state with workout when LoadSetsForWorkout is successful',
      build: () {
        when(() => workoutRepository.getWorkoutById(1,
                dateTime: any(named: 'dateTime')))
            .thenAnswer((_) async => mockWorkout);
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(LoadSetsForWorkout(1)),
      expect: () => [
        WorkoutSetState(isLoading: false, workout: mockWorkout),
      ],
    );

    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits error when LoadSetsForWorkout fails',
      build: () {
        when(() => workoutRepository.getWorkoutById(1,
                dateTime: any(named: 'dateTime')))
            .thenThrow(Exception('Workout not found'));
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(LoadSetsForWorkout(1)),
      expect: () => [
        WorkoutSetState(
            isLoading: false,
            errorMessage: 'Failed to add set: Exception: Workout not found'),
      ],
    );

    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits updated state when AddSet is successful',
      build: () {
        when(() => workoutRepository.getWorkoutById(1))
            .thenAnswer((_) async => mockWorkout);
        when(() => workoutRepository.updateWorkout(mockWorkout))
            .thenAnswer((_) async => null);
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(AddSet(mockWorkoutSet, 1)),
      expect: () => [
        WorkoutSetState(
            isLoading: false,
            workout: mockWorkout..sets.insert(0, mockWorkoutSet)),
      ],
    );

    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits error when AddSet fails',
      build: () {
        when(() => workoutRepository.getWorkoutById(1))
            .thenThrow(Exception('Workout not found'));
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(AddSet(mockWorkoutSet, 1)),
      expect: () => [
        WorkoutSetState(
            isLoading: false,
            errorMessage: 'Failed to add set: Exception: Workout not found'),
      ],
    );

    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits updated state when RemoveSet is successful',
      build: () {
        when(() => workoutRepository.getWorkoutById(1))
            .thenAnswer((_) async => mockWorkout);
        when(() => workoutRepository.deleteWorkoutSet(1))
            .thenAnswer((_) async => null);
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(RemoveSet(1, 1)),
      expect: () => [
        WorkoutSetState(
            isLoading: false,
            workout: mockWorkout..sets.removeWhere((set) => set.id == 1)),
      ],
    );

    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits error when RemoveSet fails',
      build: () {
        when(() => workoutRepository.getWorkoutById(1))
            .thenThrow(Exception('Workout not found'));
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(RemoveSet(1, 1)),
      expect: () => [
        WorkoutSetState(
            isLoading: false,
            errorMessage: 'Failed to add set: Exception: Workout not found'),
      ],
    );

    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits updated state when UpdateSet is successful',
      build: () {
        when(() => workoutRepository.updateWorkoutSet(mockWorkoutSet))
            .thenAnswer((_) async => null);
        when(() => workoutRepository.getWorkoutById(1))
            .thenAnswer((_) async => mockWorkout);
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(UpdateSet(mockWorkoutSet, 1)),
      expect: () => [
        WorkoutSetState(isLoading: false, workout: mockWorkout),
      ],
    );

    blocTest<WorkoutSetBloc, WorkoutSetState>(
      'emits error when UpdateSet fails',
      build: () {
        when(() => workoutRepository.updateWorkoutSet(mockWorkoutSet))
            .thenThrow(Exception('Failed to update set'));
        return workoutSetBloc;
      },
      act: (bloc) => bloc.add(UpdateSet(mockWorkoutSet, 1)),
      expect: () => [
        WorkoutSetState(
            isLoading: false,
            errorMessage: 'Failed to add set: Exception: Failed to update set'),
      ],
    );
  });
}
