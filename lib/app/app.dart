import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_tracker_magicai/screens/workout_detail/workout_detail_screen.dart';

import '../blocs/app/app_bloc.dart';
import '../di/di_config.dart';
import '../repositories/workout_repository.dart';
import '../theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WorkoutRepository>(
          create: (context) => getIt<WorkoutRepository>(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => AppBloc(),
          ),
        ],
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return MaterialApp(
              title: 'Workout Tracker',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: state.themeMode,
              home: WorkoutDetailScreen(workoutId: 3),
            );
          },
        ),
      ),
    );
  }
}
