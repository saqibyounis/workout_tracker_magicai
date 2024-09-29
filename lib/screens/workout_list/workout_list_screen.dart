import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_tracker_magicai/blocs/app/app_bloc.dart';
import 'package:workout_tracker_magicai/blocs/workout/workout_bloc.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/routes/app_router.gr.dart';
import 'package:workout_tracker_magicai/screens/workout_list/widgets/workout_card.dart';

import '../../generated/l10n.dart';

@RoutePage()
class WorkOutListScreen extends StatefulWidget {
  @override
  State<WorkOutListScreen> createState() => _WorkOutListScreenState();
}

class _WorkOutListScreenState extends State<WorkOutListScreen> {
  late DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      floatingActionButton: _buildFloatingActionButton(context),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (workouts) => _buildContentWidget(context, workouts),
              error: (error) =>
                  Center(child: Text('${S.of(context).error}: $error')),
              orElse: () => Center(child: Text(S.of(context).error)));
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        S.of(context).title,
      ),
      actions: [
        IconButton(
          icon: Text(
            context.read<AppBloc>().state.language.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
          ),
          onPressed: () => _switchLanguage(context),
        ),
        IconButton(
          icon: Icon(CupertinoIcons.calendar_today),
          onPressed: () => _pickDate(context),
        ),
        IconButton(
          icon: Icon(
            Theme.of(context).brightness == Brightness.dark
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
          onPressed: () {
            final themeMode = Theme.of(context).brightness == Brightness.dark
                ? ThemeMode.light
                : ThemeMode.dark;
            context.read<AppBloc>().add(ChangeThemeMode(themeMode));
          },
        )
      ],
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _navigateToWorkoutDetailScreen(null),
      backgroundColor: Theme.of(context).primaryColor,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }

  Widget _buildContentWidget(BuildContext context, List<Workout> workouts) {
    if (workouts.isEmpty) {
      return Center(
        child: Text(S.of(context).no_workout_found),
      );
    }
    return ListView.builder(
      itemCount: workouts.length,
      itemBuilder: (context, index) {
        final workout = workouts[index]!;
        return WorkoutCard(
          workout: workout,
          onRemovePressed: _onRemovePressed,
          onFinishPressed: _onFinishPressed,
          onTap: _navigateToWorkoutDetailScreen,
        );
      },
    );
  }

  void _switchLanguage(BuildContext context) {
    if (context.read<AppBloc>().state.language == 'en') {
      context.read<AppBloc>().add(ChangeLanguage('cy'));
    } else {
      context.read<AppBloc>().add(ChangeLanguage('en'));
    }
  }

  void _pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        currentDate = pickedDate;
      });
      context.read<WorkoutBloc>().add(LoadWorkouts(pickedDate));
    }
  }

  void _navigateToWorkoutDetailScreen(Workout? workout) async {
    if (workout != null) {
      await context.router.push(
          WorkoutDetailRoute(workoutId: workout.id, dateTime: workout.date));
    } else {
      await context.router
          .push(WorkoutDetailRoute(workoutId: -1, dateTime: currentDate));
    }
    context.read<WorkoutBloc>().add(LoadWorkouts(currentDate));
  }

  void _onRemovePressed(Workout workout) {
    context.read<WorkoutBloc>().add(DeleteWorkout(workout));
  }

  void _onFinishPressed(Workout workout) {
    workout.setstatus(WorkoutStatus.finished);
    context.read<WorkoutBloc>().add(UpdateWorkout(workout));
  }
}
