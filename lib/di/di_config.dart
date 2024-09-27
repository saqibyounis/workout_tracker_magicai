import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_tracker_magicai/di/di_config.config.dart';

import '../objectbox.g.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();

@module
abstract class RegisterModule {
  @singleton
  Future<Store> get store async => await openStore();
}
