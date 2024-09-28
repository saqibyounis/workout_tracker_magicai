import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_tracker_magicai/blocs/workout/workout_bloc.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/screens/workout_list/widgets/workout_card.dart';

@RoutePage()
class WorkOutListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workouts'),
      ),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (workouts) => _buildContentWidget(context, workouts),
              error: (error) => Center(child: Text('Error: $error')),
              orElse: () => Center(child: Text('Error!')));
        },
      ),
    );
  }

  Widget _buildContentWidget(BuildContext context, List<Workout> workouts) {
    return ListView.builder(
      itemCount: workouts.length,
      itemBuilder: (context, index) {
        final workout = workouts[index]!;
        return WorkoutCard(workout: workout);
      },
    );
  }
}
