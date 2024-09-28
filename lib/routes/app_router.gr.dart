// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:workout_tracker_magicai/screens/workout_detail/workout_detail_screen.dart'
    as _i2;
import 'package:workout_tracker_magicai/screens/workout_list/workout_list_screen.dart'
    as _i1;

/// generated route for
/// [_i1.WorkOutListScreen]
class WorkOutListRoute extends _i3.PageRouteInfo<void> {
  const WorkOutListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          WorkOutListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkOutListRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return _i1.WorkOutListScreen();
    },
  );
}

/// generated route for
/// [_i2.WorkoutDetailScreen]
class WorkoutDetailRoute extends _i3.PageRouteInfo<WorkoutDetailRouteArgs> {
  WorkoutDetailRoute({
    _i4.Key? key,
    required int workoutId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          WorkoutDetailRoute.name,
          args: WorkoutDetailRouteArgs(
            key: key,
            workoutId: workoutId,
          ),
          initialChildren: children,
        );

  static const String name = 'WorkoutDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WorkoutDetailRouteArgs>();
      return _i2.WorkoutDetailScreen(
        key: args.key,
        workoutId: args.workoutId,
      );
    },
  );
}

class WorkoutDetailRouteArgs {
  const WorkoutDetailRouteArgs({
    this.key,
    required this.workoutId,
  });

  final _i4.Key? key;

  final int workoutId;

  @override
  String toString() {
    return 'WorkoutDetailRouteArgs{key: $key, workoutId: $workoutId}';
  }
}
