import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_tracker_magicai/blocs/workout/workout_bloc.dart';
import 'package:workout_tracker_magicai/blocs/workout_set/workout_set_bloc.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';
import 'package:workout_tracker_magicai/screens/workout_detail/workout_set_card.dart';

import '../../di/di_config.dart';
import '../../repositories/workout_repository.dart';

@RoutePage()
class WorkoutDetailScreen extends StatefulWidget {
  final int workoutId;

  const WorkoutDetailScreen({super.key, required this.workoutId});

  @override
  _WorkoutDetailScreenState createState() => _WorkoutDetailScreenState();
}

class _WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  final List<WorkoutSet> sets = [];

  final exercises = [
    'Barbell Row',
    'Bench Press',
    'Shoulder Press',
    'Deadlift',
    'Squat'
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Tracker'),
      ),
      body: BlocProvider(
        create: (context) => WorkoutSetBloc(
            workoutRepository: getIt<WorkoutRepository>(),
            workoutId: widget.workoutId)
          ..add(LoadSetsForWorkout(widget.workoutId)),
        child: BlocBuilder<WorkoutSetBloc, WorkoutSetState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(),
              ),
              initial: () => SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(),
              ),
              loaded: (workout) => _buildContentWidget(context, workout),
              orElse: () {
                return Text('Error loading data!');
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildContentWidget(BuildContext context, Workout workout) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Workout Sets',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: workout.sets.length,
                itemBuilder: (context, index) {
                  return WorkoutSetCard(
                    workoutSet: workout.sets[index],
                    exercises: exercises,
                    onRemove: () => _removeSetPressed(context, index, workout),
                    workoutId: workout.id,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomSheet: _buildActionButtons(context, workout),
    );
  }

  Widget _buildActionButtons(BuildContext context, Workout workout) {
    return SafeArea(
      child: Container(
        height: 120,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () => _onAddSetPressed(context, workout),
              child: Text('Add Set'),
            ),
            ElevatedButton(
              onPressed: () => _onFinishPressed(context, workout),
              child: Text('Finish'),
            ),
          ],
        ),
      ),
    );
  }

  void _onFinishPressed(BuildContext context, Workout workout) {
    workout.status = WorkoutStatus.finished;
    context.read<WorkoutBloc>().add((UpdateWorkout(workout)));
    //Need to popup
  }

  void _onAddSetPressed(BuildContext context, Workout workout) {
    context.read<WorkoutSetBloc>().add(AddSet(
        WorkoutSet(exercise: exercises.first, weight: 0.0, repetitions: 0),
        workout.id));
  }

  void _removeSetPressed(BuildContext context, int index, Workout workout) {
    context
        .read<WorkoutSetBloc>()
        .add(RemoveSet(workout.sets[index].id, workout.id));
  }
}
