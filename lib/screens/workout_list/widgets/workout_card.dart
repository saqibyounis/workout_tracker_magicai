import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/screens/common_widgets/finish_button.dart';
import 'package:workout_tracker_magicai/screens/common_widgets/remove_button.dart';

import '../../../generated/l10n.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;
  final Function(Workout workout) onRemovePressed;
  final Function(Workout workout) onFinishPressed;
  final Function(Workout workout) onTap;

  const WorkoutCard(
      {Key? key,
      required this.workout,
      required this.onRemovePressed,
      required this.onFinishPressed,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMMMd().format(workout.date);
    final isFinished = workout.getStatus() == WorkoutStatus.finished;

    return Card(
      elevation: 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () => onTap(workout),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Workout date and status (Finished or In Progress)
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8.0, // Adjust spacing as needed
                runSpacing: 8.0, // Vertical spacing between lines when wrapping
                children: [
                  Text(
                    '${S.of(context).workout_on} $dateFormat',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Chip(
                    label: Text(
                      isFinished
                          ? S.of(context).finished
                          : S.of(context).in_progress,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
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
                '${S.of(context).total_sets}: ${workout.sets.length}',
                style: Theme.of(context).textTheme.labelLarge!,
              ),
              const SizedBox(height: 8),
              // Overview of first few sets (if any)
              if (workout.sets.isNotEmpty)
                ...workout.sets.take(2).map((set) => Text(
                      '${set.exercise} - ${set.weight}kg, ${set.repetitions} ${S.of(context).reps}',
                      style: const TextStyle(fontSize: 14),
                    )),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  RemoveButton(() => onRemovePressed(workout)),
                  SizedBox(
                    width: 16.0,
                  ),
                  if (!isFinished)
                    Expanded(
                        child: FinishButton(
                      onPressed: () => onFinishPressed(workout),
                      fontSize: 12,
                    ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
