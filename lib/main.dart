import 'package:flutter/material.dart';
import 'package:workout_tracker_magicai/blocs/bloc_observer.dart';

import 'app/app.dart';
import 'di/di_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //DI Setup
  configureDependencies();

  WorkoutAppBlocObserver blocObserver = WorkoutAppBlocObserver();

  runApp(const App());
}
