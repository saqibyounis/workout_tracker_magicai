import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_tracker_magicai/blocs/workout/workout_bloc.dart';
import 'package:workout_tracker_magicai/blocs/workout_set/workout_set_bloc.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';
import 'package:workout_tracker_magicai/screens/workout_detail/widgets/workout_set_card.dart';

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
    return BlocProvider(
      create: (context) => WorkoutSetBloc(
          workoutRepository: getIt<WorkoutRepository>(),
          workoutId: widget.workoutId)
        ..add(LoadSetsForWorkout(widget.workoutId)),
      child: BlocBuilder<WorkoutSetBloc, WorkoutSetState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.errorMessage != null) {
            return Center(
              child: Text('Error loading data!'),
            );
          }

          return _buildContentWidget(
              context, state.workout ?? Workout(date: DateTime.now()));
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context, Workout workout) {
    return AppBar(
      title: Text('Workout Details'),
      actions: [
        IconButton(
            onPressed: () => _onAddSetPressed(context, workout),
            icon: Icon(CupertinoIcons.add))
      ],
    );
  }

  Widget _buildContentWidget(BuildContext context, Workout workout) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context, workout),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: workout.sets.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return WorkoutSetCard(
                      workoutSet: workout.sets[index],
                      exercises: exercises,
                      onRemove: () =>
                          _removeSetPressed(context, index, workout),
                      workoutId: workout.id,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: _buildActionButtons(context, workout),
    );
  }

  Widget _buildActionButtons(BuildContext context, Workout workout) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      height: 80, // F
      padding: EdgeInsets.symmetric(
          vertical: 16.0, horizontal: 16.0), // ull width button
      child: TextButton(
        onPressed: () {
          // Action on button press
          print('Workout finished');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
        child: Text(
          'Finish',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white), // Text size
        ),
      ),
    );
  }

  void _onFinishPressed(BuildContext context, Workout workout) {
    workout.setstatus(WorkoutStatus.finished);
    context.read<WorkoutBloc>().add((UpdateWorkout(workout)));
    context.router.popForced();
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
