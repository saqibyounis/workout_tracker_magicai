import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_tracker_magicai/blocs/workout_set/workout_set_bloc.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';
import 'package:workout_tracker_magicai/screens/common_widgets/remove_button.dart';

class WorkoutSetCard extends StatelessWidget {
  final WorkoutSet workoutSet;
  final int workoutId;
  final List<String> exercises;
  final VoidCallback onRemove;

  WorkoutSetCard(
      {required this.workoutSet,
      required this.exercises,
      required this.onRemove,
      required this.workoutId});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: workoutSet.exercise,
              hint: Text('Select Exercise'),
              items: exercises.map((exercise) {
                return DropdownMenuItem(
                  value: exercise,
                  child: Text(exercise),
                );
              }).toList(),
              onChanged: (value) {
                workoutSet.exercise = value!;
                _updateWorkout(context);
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
              controller: TextEditingController()
                ..text = workoutSet.weight.toString(),
              onChanged: (value) {
                workoutSet.weight = double.tryParse(value)!;
                _updateWorkout(context);
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: 'Repetitions'),
              keyboardType: TextInputType.number,
              controller: TextEditingController()
                ..text = workoutSet.repetitions.toString(),
              onChanged: (value) {
                workoutSet.repetitions = int.tryParse(value)!;
                _updateWorkout(context);
              },
            ),
            SizedBox(height: 10),
            RemoveButton(onRemove)
          ],
        ),
      ),
    );
  }

  void _updateWorkout(BuildContext context) {
    context.read<WorkoutSetBloc>().add(UpdateSet(workoutSet, workoutId));
  }
}
