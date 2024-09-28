// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) loadWorkouts,
    required TResult Function(Workout workout) addWorkout,
    required TResult Function(Workout workout) updateWorkout,
    required TResult Function(Workout workout) deleteWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? loadWorkouts,
    TResult? Function(Workout workout)? addWorkout,
    TResult? Function(Workout workout)? updateWorkout,
    TResult? Function(Workout workout)? deleteWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? loadWorkouts,
    TResult Function(Workout workout)? addWorkout,
    TResult Function(Workout workout)? updateWorkout,
    TResult Function(Workout workout)? deleteWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWorkouts value) loadWorkouts,
    required TResult Function(AddWorkout value) addWorkout,
    required TResult Function(UpdateWorkout value) updateWorkout,
    required TResult Function(DeleteWorkout value) deleteWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWorkouts value)? loadWorkouts,
    TResult? Function(AddWorkout value)? addWorkout,
    TResult? Function(UpdateWorkout value)? updateWorkout,
    TResult? Function(DeleteWorkout value)? deleteWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWorkouts value)? loadWorkouts,
    TResult Function(AddWorkout value)? addWorkout,
    TResult Function(UpdateWorkout value)? updateWorkout,
    TResult Function(DeleteWorkout value)? deleteWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
          WorkoutEvent value, $Res Function(WorkoutEvent) then) =
      _$WorkoutEventCopyWithImpl<$Res, WorkoutEvent>;
}

/// @nodoc
class _$WorkoutEventCopyWithImpl<$Res, $Val extends WorkoutEvent>
    implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadWorkoutsImplCopyWith<$Res> {
  factory _$$LoadWorkoutsImplCopyWith(
          _$LoadWorkoutsImpl value, $Res Function(_$LoadWorkoutsImpl) then) =
      __$$LoadWorkoutsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$LoadWorkoutsImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$LoadWorkoutsImpl>
    implements _$$LoadWorkoutsImplCopyWith<$Res> {
  __$$LoadWorkoutsImplCopyWithImpl(
      _$LoadWorkoutsImpl _value, $Res Function(_$LoadWorkoutsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$LoadWorkoutsImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LoadWorkoutsImpl implements LoadWorkouts {
  const _$LoadWorkoutsImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'WorkoutEvent.loadWorkouts(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWorkoutsImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWorkoutsImplCopyWith<_$LoadWorkoutsImpl> get copyWith =>
      __$$LoadWorkoutsImplCopyWithImpl<_$LoadWorkoutsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) loadWorkouts,
    required TResult Function(Workout workout) addWorkout,
    required TResult Function(Workout workout) updateWorkout,
    required TResult Function(Workout workout) deleteWorkout,
  }) {
    return loadWorkouts(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? loadWorkouts,
    TResult? Function(Workout workout)? addWorkout,
    TResult? Function(Workout workout)? updateWorkout,
    TResult? Function(Workout workout)? deleteWorkout,
  }) {
    return loadWorkouts?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? loadWorkouts,
    TResult Function(Workout workout)? addWorkout,
    TResult Function(Workout workout)? updateWorkout,
    TResult Function(Workout workout)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (loadWorkouts != null) {
      return loadWorkouts(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWorkouts value) loadWorkouts,
    required TResult Function(AddWorkout value) addWorkout,
    required TResult Function(UpdateWorkout value) updateWorkout,
    required TResult Function(DeleteWorkout value) deleteWorkout,
  }) {
    return loadWorkouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWorkouts value)? loadWorkouts,
    TResult? Function(AddWorkout value)? addWorkout,
    TResult? Function(UpdateWorkout value)? updateWorkout,
    TResult? Function(DeleteWorkout value)? deleteWorkout,
  }) {
    return loadWorkouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWorkouts value)? loadWorkouts,
    TResult Function(AddWorkout value)? addWorkout,
    TResult Function(UpdateWorkout value)? updateWorkout,
    TResult Function(DeleteWorkout value)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (loadWorkouts != null) {
      return loadWorkouts(this);
    }
    return orElse();
  }
}

abstract class LoadWorkouts implements WorkoutEvent {
  const factory LoadWorkouts(final DateTime dateTime) = _$LoadWorkoutsImpl;

  DateTime get dateTime;

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadWorkoutsImplCopyWith<_$LoadWorkoutsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddWorkoutImplCopyWith<$Res> {
  factory _$$AddWorkoutImplCopyWith(
          _$AddWorkoutImpl value, $Res Function(_$AddWorkoutImpl) then) =
      __$$AddWorkoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});
}

/// @nodoc
class __$$AddWorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$AddWorkoutImpl>
    implements _$$AddWorkoutImplCopyWith<$Res> {
  __$$AddWorkoutImplCopyWithImpl(
      _$AddWorkoutImpl _value, $Res Function(_$AddWorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$AddWorkoutImpl(
      null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
    ));
  }
}

/// @nodoc

class _$AddWorkoutImpl implements AddWorkout {
  const _$AddWorkoutImpl(this.workout);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutEvent.addWorkout(workout: $workout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWorkoutImpl &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWorkoutImplCopyWith<_$AddWorkoutImpl> get copyWith =>
      __$$AddWorkoutImplCopyWithImpl<_$AddWorkoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) loadWorkouts,
    required TResult Function(Workout workout) addWorkout,
    required TResult Function(Workout workout) updateWorkout,
    required TResult Function(Workout workout) deleteWorkout,
  }) {
    return addWorkout(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? loadWorkouts,
    TResult? Function(Workout workout)? addWorkout,
    TResult? Function(Workout workout)? updateWorkout,
    TResult? Function(Workout workout)? deleteWorkout,
  }) {
    return addWorkout?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? loadWorkouts,
    TResult Function(Workout workout)? addWorkout,
    TResult Function(Workout workout)? updateWorkout,
    TResult Function(Workout workout)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (addWorkout != null) {
      return addWorkout(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWorkouts value) loadWorkouts,
    required TResult Function(AddWorkout value) addWorkout,
    required TResult Function(UpdateWorkout value) updateWorkout,
    required TResult Function(DeleteWorkout value) deleteWorkout,
  }) {
    return addWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWorkouts value)? loadWorkouts,
    TResult? Function(AddWorkout value)? addWorkout,
    TResult? Function(UpdateWorkout value)? updateWorkout,
    TResult? Function(DeleteWorkout value)? deleteWorkout,
  }) {
    return addWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWorkouts value)? loadWorkouts,
    TResult Function(AddWorkout value)? addWorkout,
    TResult Function(UpdateWorkout value)? updateWorkout,
    TResult Function(DeleteWorkout value)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (addWorkout != null) {
      return addWorkout(this);
    }
    return orElse();
  }
}

abstract class AddWorkout implements WorkoutEvent {
  const factory AddWorkout(final Workout workout) = _$AddWorkoutImpl;

  Workout get workout;

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddWorkoutImplCopyWith<_$AddWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWorkoutImplCopyWith<$Res> {
  factory _$$UpdateWorkoutImplCopyWith(
          _$UpdateWorkoutImpl value, $Res Function(_$UpdateWorkoutImpl) then) =
      __$$UpdateWorkoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});
}

/// @nodoc
class __$$UpdateWorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$UpdateWorkoutImpl>
    implements _$$UpdateWorkoutImplCopyWith<$Res> {
  __$$UpdateWorkoutImplCopyWithImpl(
      _$UpdateWorkoutImpl _value, $Res Function(_$UpdateWorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$UpdateWorkoutImpl(
      null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
    ));
  }
}

/// @nodoc

class _$UpdateWorkoutImpl implements UpdateWorkout {
  const _$UpdateWorkoutImpl(this.workout);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutEvent.updateWorkout(workout: $workout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWorkoutImpl &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWorkoutImplCopyWith<_$UpdateWorkoutImpl> get copyWith =>
      __$$UpdateWorkoutImplCopyWithImpl<_$UpdateWorkoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) loadWorkouts,
    required TResult Function(Workout workout) addWorkout,
    required TResult Function(Workout workout) updateWorkout,
    required TResult Function(Workout workout) deleteWorkout,
  }) {
    return updateWorkout(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? loadWorkouts,
    TResult? Function(Workout workout)? addWorkout,
    TResult? Function(Workout workout)? updateWorkout,
    TResult? Function(Workout workout)? deleteWorkout,
  }) {
    return updateWorkout?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? loadWorkouts,
    TResult Function(Workout workout)? addWorkout,
    TResult Function(Workout workout)? updateWorkout,
    TResult Function(Workout workout)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (updateWorkout != null) {
      return updateWorkout(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWorkouts value) loadWorkouts,
    required TResult Function(AddWorkout value) addWorkout,
    required TResult Function(UpdateWorkout value) updateWorkout,
    required TResult Function(DeleteWorkout value) deleteWorkout,
  }) {
    return updateWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWorkouts value)? loadWorkouts,
    TResult? Function(AddWorkout value)? addWorkout,
    TResult? Function(UpdateWorkout value)? updateWorkout,
    TResult? Function(DeleteWorkout value)? deleteWorkout,
  }) {
    return updateWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWorkouts value)? loadWorkouts,
    TResult Function(AddWorkout value)? addWorkout,
    TResult Function(UpdateWorkout value)? updateWorkout,
    TResult Function(DeleteWorkout value)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (updateWorkout != null) {
      return updateWorkout(this);
    }
    return orElse();
  }
}

abstract class UpdateWorkout implements WorkoutEvent {
  const factory UpdateWorkout(final Workout workout) = _$UpdateWorkoutImpl;

  Workout get workout;

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWorkoutImplCopyWith<_$UpdateWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteWorkoutImplCopyWith<$Res> {
  factory _$$DeleteWorkoutImplCopyWith(
          _$DeleteWorkoutImpl value, $Res Function(_$DeleteWorkoutImpl) then) =
      __$$DeleteWorkoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});
}

/// @nodoc
class __$$DeleteWorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$DeleteWorkoutImpl>
    implements _$$DeleteWorkoutImplCopyWith<$Res> {
  __$$DeleteWorkoutImplCopyWithImpl(
      _$DeleteWorkoutImpl _value, $Res Function(_$DeleteWorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$DeleteWorkoutImpl(
      null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
    ));
  }
}

/// @nodoc

class _$DeleteWorkoutImpl implements DeleteWorkout {
  const _$DeleteWorkoutImpl(this.workout);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutEvent.deleteWorkout(workout: $workout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWorkoutImpl &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWorkoutImplCopyWith<_$DeleteWorkoutImpl> get copyWith =>
      __$$DeleteWorkoutImplCopyWithImpl<_$DeleteWorkoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) loadWorkouts,
    required TResult Function(Workout workout) addWorkout,
    required TResult Function(Workout workout) updateWorkout,
    required TResult Function(Workout workout) deleteWorkout,
  }) {
    return deleteWorkout(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? loadWorkouts,
    TResult? Function(Workout workout)? addWorkout,
    TResult? Function(Workout workout)? updateWorkout,
    TResult? Function(Workout workout)? deleteWorkout,
  }) {
    return deleteWorkout?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? loadWorkouts,
    TResult Function(Workout workout)? addWorkout,
    TResult Function(Workout workout)? updateWorkout,
    TResult Function(Workout workout)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (deleteWorkout != null) {
      return deleteWorkout(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWorkouts value) loadWorkouts,
    required TResult Function(AddWorkout value) addWorkout,
    required TResult Function(UpdateWorkout value) updateWorkout,
    required TResult Function(DeleteWorkout value) deleteWorkout,
  }) {
    return deleteWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWorkouts value)? loadWorkouts,
    TResult? Function(AddWorkout value)? addWorkout,
    TResult? Function(UpdateWorkout value)? updateWorkout,
    TResult? Function(DeleteWorkout value)? deleteWorkout,
  }) {
    return deleteWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWorkouts value)? loadWorkouts,
    TResult Function(AddWorkout value)? addWorkout,
    TResult Function(UpdateWorkout value)? updateWorkout,
    TResult Function(DeleteWorkout value)? deleteWorkout,
    required TResult orElse(),
  }) {
    if (deleteWorkout != null) {
      return deleteWorkout(this);
    }
    return orElse();
  }
}

abstract class DeleteWorkout implements WorkoutEvent {
  const factory DeleteWorkout(final Workout workout) = _$DeleteWorkoutImpl;

  Workout get workout;

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteWorkoutImplCopyWith<_$DeleteWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res, WorkoutState>;
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res, $Val extends WorkoutState>
    implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WorkoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WorkoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WorkoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> workouts});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_$LoadedImpl(
      null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Workout> workouts) : _workouts = workouts;

  final List<Workout> _workouts;
  @override
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  String toString() {
    return 'WorkoutState.loaded(workouts: $workouts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_workouts));

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(workouts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(workouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WorkoutState {
  const factory _Loaded(final List<Workout> workouts) = _$LoadedImpl;

  List<Workout> get workouts;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WorkoutState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WorkoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
