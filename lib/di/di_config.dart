import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_tracker_magicai/di/di_config.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
