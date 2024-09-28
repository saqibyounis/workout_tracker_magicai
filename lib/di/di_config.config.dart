// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:workout_tracker_magicai/blocs/app/app_bloc.dart' as _i445;
import 'package:workout_tracker_magicai/blocs/bloc_observer.dart' as _i241;
import 'package:workout_tracker_magicai/repositories/workout_repository.dart'
    as _i279;
import 'package:workout_tracker_magicai/routes/app_router.dart' as _i1060;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i279.WorkoutRepository>(() => _i279.WorkoutRepository());
    gh.factory<_i445.AppBloc>(() => _i445.AppBloc());
    gh.factory<_i241.WorkoutAppBlocObserver>(
        () => _i241.WorkoutAppBlocObserver());
    gh.factory<_i1060.AppRouter>(() => _i1060.AppRouter());
    return this;
  }
}
