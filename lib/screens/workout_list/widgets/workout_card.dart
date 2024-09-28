import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/routes/app_router.gr.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;

  const WorkoutCard({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMMMd().format(workout.date);
    final isFinished = workout.status == WorkoutStatus.finished;

    return Card(
      elevation: 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () =>
            context.router.push(WorkoutDetailRoute(workoutId: workout.id)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Workout date and status (Finished or In Progress)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Workout on $dateFormat',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // Status indicator: Finished or In Progress
                  Chip(
                    label: Text(
                      isFinished ? 'Finished' : 'In Progress',
                      style: TextStyle(
                        color: isFinished ? Colors.green : Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor:
                        isFinished ? Colors.green[50] : Colors.orange[50],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Number of sets in the workout
              Text(
                'Total Sets: ${workout.sets.length}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              // Overview of first few sets (if any)
              if (workout.sets.isNotEmpty)
                ...workout.sets.take(2).map((set) => Text(
                      '${set.exercise} - ${set.weight}kg, ${set.repetitions} reps',
                      style: const TextStyle(fontSize: 14),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
