// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_set_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutSetEvent {
  int get workoutId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSet workoutSet, int workoutId) addSet,
    required TResult Function(int setId, int workoutId) removeSet,
    required TResult Function(WorkoutSet workoutSet, int workoutId) updateSet,
    required TResult Function(int workoutId) loadSetsForWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult? Function(int setId, int workoutId)? removeSet,
    TResult? Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult? Function(int workoutId)? loadSetsForWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult Function(int setId, int workoutId)? removeSet,
    TResult Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult Function(int workoutId)? loadSetsForWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSet value) addSet,
    required TResult Function(RemoveSet value) removeSet,
    required TResult Function(UpdateSet value) updateSet,
    required TResult Function(LoadSetsForWorkout value) loadSetsForWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSet value)? addSet,
    TResult? Function(RemoveSet value)? removeSet,
    TResult? Function(UpdateSet value)? updateSet,
    TResult? Function(LoadSetsForWorkout value)? loadSetsForWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSet value)? addSet,
    TResult Function(RemoveSet value)? removeSet,
    TResult Function(UpdateSet value)? updateSet,
    TResult Function(LoadSetsForWorkout value)? loadSetsForWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutSetEventCopyWith<WorkoutSetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSetEventCopyWith<$Res> {
  factory $WorkoutSetEventCopyWith(
          WorkoutSetEvent value, $Res Function(WorkoutSetEvent) then) =
      _$WorkoutSetEventCopyWithImpl<$Res, WorkoutSetEvent>;
  @useResult
  $Res call({int workoutId});
}

/// @nodoc
class _$WorkoutSetEventCopyWithImpl<$Res, $Val extends WorkoutSetEvent>
    implements $WorkoutSetEventCopyWith<$Res> {
  _$WorkoutSetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
  }) {
    return _then(_value.copyWith(
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddSetImplCopyWith<$Res>
    implements $WorkoutSetEventCopyWith<$Res> {
  factory _$$AddSetImplCopyWith(
          _$AddSetImpl value, $Res Function(_$AddSetImpl) then) =
      __$$AddSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WorkoutSet workoutSet, int workoutId});
}

/// @nodoc
class __$$AddSetImplCopyWithImpl<$Res>
    extends _$WorkoutSetEventCopyWithImpl<$Res, _$AddSetImpl>
    implements _$$AddSetImplCopyWith<$Res> {
  __$$AddSetImplCopyWithImpl(
      _$AddSetImpl _value, $Res Function(_$AddSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutSet = null,
    Object? workoutId = null,
  }) {
    return _then(_$AddSetImpl(
      null == workoutSet
          ? _value.workoutSet
          : workoutSet // ignore: cast_nullable_to_non_nullable
              as WorkoutSet,
      null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddSetImpl implements AddSet {
  const _$AddSetImpl(this.workoutSet, this.workoutId);

  @override
  final WorkoutSet workoutSet;
  @override
  final int workoutId;

  @override
  String toString() {
    return 'WorkoutSetEvent.addSet(workoutSet: $workoutSet, workoutId: $workoutId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSetImpl &&
            (identical(other.workoutSet, workoutSet) ||
                other.workoutSet == workoutSet) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutSet, workoutId);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSetImplCopyWith<_$AddSetImpl> get copyWith =>
      __$$AddSetImplCopyWithImpl<_$AddSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSet workoutSet, int workoutId) addSet,
    required TResult Function(int setId, int workoutId) removeSet,
    required TResult Function(WorkoutSet workoutSet, int workoutId) updateSet,
    required TResult Function(int workoutId) loadSetsForWorkout,
  }) {
    return addSet(workoutSet, workoutId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult? Function(int setId, int workoutId)? removeSet,
    TResult? Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult? Function(int workoutId)? loadSetsForWorkout,
  }) {
    return addSet?.call(workoutSet, workoutId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult Function(int setId, int workoutId)? removeSet,
    TResult Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult Function(int workoutId)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (addSet != null) {
      return addSet(workoutSet, workoutId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSet value) addSet,
    required TResult Function(RemoveSet value) removeSet,
    required TResult Function(UpdateSet value) updateSet,
    required TResult Function(LoadSetsForWorkout value) loadSetsForWorkout,
  }) {
    return addSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSet value)? addSet,
    TResult? Function(RemoveSet value)? removeSet,
    TResult? Function(UpdateSet value)? updateSet,
    TResult? Function(LoadSetsForWorkout value)? loadSetsForWorkout,
  }) {
    return addSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSet value)? addSet,
    TResult Function(RemoveSet value)? removeSet,
    TResult Function(UpdateSet value)? updateSet,
    TResult Function(LoadSetsForWorkout value)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (addSet != null) {
      return addSet(this);
    }
    return orElse();
  }
}

abstract class AddSet implements WorkoutSetEvent {
  const factory AddSet(final WorkoutSet workoutSet, final int workoutId) =
      _$AddSetImpl;

  WorkoutSet get workoutSet;
  @override
  int get workoutId;

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSetImplCopyWith<_$AddSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSetImplCopyWith<$Res>
    implements $WorkoutSetEventCopyWith<$Res> {
  factory _$$RemoveSetImplCopyWith(
          _$RemoveSetImpl value, $Res Function(_$RemoveSetImpl) then) =
      __$$RemoveSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int setId, int workoutId});
}

/// @nodoc
class __$$RemoveSetImplCopyWithImpl<$Res>
    extends _$WorkoutSetEventCopyWithImpl<$Res, _$RemoveSetImpl>
    implements _$$RemoveSetImplCopyWith<$Res> {
  __$$RemoveSetImplCopyWithImpl(
      _$RemoveSetImpl _value, $Res Function(_$RemoveSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setId = null,
    Object? workoutId = null,
  }) {
    return _then(_$RemoveSetImpl(
      null == setId
          ? _value.setId
          : setId // ignore: cast_nullable_to_non_nullable
              as int,
      null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveSetImpl implements RemoveSet {
  const _$RemoveSetImpl(this.setId, this.workoutId);

  @override
  final int setId;
  @override
  final int workoutId;

  @override
  String toString() {
    return 'WorkoutSetEvent.removeSet(setId: $setId, workoutId: $workoutId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSetImpl &&
            (identical(other.setId, setId) || other.setId == setId) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, setId, workoutId);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSetImplCopyWith<_$RemoveSetImpl> get copyWith =>
      __$$RemoveSetImplCopyWithImpl<_$RemoveSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSet workoutSet, int workoutId) addSet,
    required TResult Function(int setId, int workoutId) removeSet,
    required TResult Function(WorkoutSet workoutSet, int workoutId) updateSet,
    required TResult Function(int workoutId) loadSetsForWorkout,
  }) {
    return removeSet(setId, workoutId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult? Function(int setId, int workoutId)? removeSet,
    TResult? Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult? Function(int workoutId)? loadSetsForWorkout,
  }) {
    return removeSet?.call(setId, workoutId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult Function(int setId, int workoutId)? removeSet,
    TResult Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult Function(int workoutId)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (removeSet != null) {
      return removeSet(setId, workoutId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSet value) addSet,
    required TResult Function(RemoveSet value) removeSet,
    required TResult Function(UpdateSet value) updateSet,
    required TResult Function(LoadSetsForWorkout value) loadSetsForWorkout,
  }) {
    return removeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSet value)? addSet,
    TResult? Function(RemoveSet value)? removeSet,
    TResult? Function(UpdateSet value)? updateSet,
    TResult? Function(LoadSetsForWorkout value)? loadSetsForWorkout,
  }) {
    return removeSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSet value)? addSet,
    TResult Function(RemoveSet value)? removeSet,
    TResult Function(UpdateSet value)? updateSet,
    TResult Function(LoadSetsForWorkout value)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (removeSet != null) {
      return removeSet(this);
    }
    return orElse();
  }
}

abstract class RemoveSet implements WorkoutSetEvent {
  const factory RemoveSet(final int setId, final int workoutId) =
      _$RemoveSetImpl;

  int get setId;
  @override
  int get workoutId;

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveSetImplCopyWith<_$RemoveSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSetImplCopyWith<$Res>
    implements $WorkoutSetEventCopyWith<$Res> {
  factory _$$UpdateSetImplCopyWith(
          _$UpdateSetImpl value, $Res Function(_$UpdateSetImpl) then) =
      __$$UpdateSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WorkoutSet workoutSet, int workoutId});
}

/// @nodoc
class __$$UpdateSetImplCopyWithImpl<$Res>
    extends _$WorkoutSetEventCopyWithImpl<$Res, _$UpdateSetImpl>
    implements _$$UpdateSetImplCopyWith<$Res> {
  __$$UpdateSetImplCopyWithImpl(
      _$UpdateSetImpl _value, $Res Function(_$UpdateSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutSet = null,
    Object? workoutId = null,
  }) {
    return _then(_$UpdateSetImpl(
      null == workoutSet
          ? _value.workoutSet
          : workoutSet // ignore: cast_nullable_to_non_nullable
              as WorkoutSet,
      null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateSetImpl implements UpdateSet {
  const _$UpdateSetImpl(this.workoutSet, this.workoutId);

  @override
  final WorkoutSet workoutSet;
  @override
  final int workoutId;

  @override
  String toString() {
    return 'WorkoutSetEvent.updateSet(workoutSet: $workoutSet, workoutId: $workoutId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSetImpl &&
            (identical(other.workoutSet, workoutSet) ||
                other.workoutSet == workoutSet) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutSet, workoutId);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSetImplCopyWith<_$UpdateSetImpl> get copyWith =>
      __$$UpdateSetImplCopyWithImpl<_$UpdateSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSet workoutSet, int workoutId) addSet,
    required TResult Function(int setId, int workoutId) removeSet,
    required TResult Function(WorkoutSet workoutSet, int workoutId) updateSet,
    required TResult Function(int workoutId) loadSetsForWorkout,
  }) {
    return updateSet(workoutSet, workoutId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult? Function(int setId, int workoutId)? removeSet,
    TResult? Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult? Function(int workoutId)? loadSetsForWorkout,
  }) {
    return updateSet?.call(workoutSet, workoutId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult Function(int setId, int workoutId)? removeSet,
    TResult Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult Function(int workoutId)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (updateSet != null) {
      return updateSet(workoutSet, workoutId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSet value) addSet,
    required TResult Function(RemoveSet value) removeSet,
    required TResult Function(UpdateSet value) updateSet,
    required TResult Function(LoadSetsForWorkout value) loadSetsForWorkout,
  }) {
    return updateSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSet value)? addSet,
    TResult? Function(RemoveSet value)? removeSet,
    TResult? Function(UpdateSet value)? updateSet,
    TResult? Function(LoadSetsForWorkout value)? loadSetsForWorkout,
  }) {
    return updateSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSet value)? addSet,
    TResult Function(RemoveSet value)? removeSet,
    TResult Function(UpdateSet value)? updateSet,
    TResult Function(LoadSetsForWorkout value)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (updateSet != null) {
      return updateSet(this);
    }
    return orElse();
  }
}

abstract class UpdateSet implements WorkoutSetEvent {
  const factory UpdateSet(final WorkoutSet workoutSet, final int workoutId) =
      _$UpdateSetImpl;

  WorkoutSet get workoutSet;
  @override
  int get workoutId;

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSetImplCopyWith<_$UpdateSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSetsForWorkoutImplCopyWith<$Res>
    implements $WorkoutSetEventCopyWith<$Res> {
  factory _$$LoadSetsForWorkoutImplCopyWith(_$LoadSetsForWorkoutImpl value,
          $Res Function(_$LoadSetsForWorkoutImpl) then) =
      __$$LoadSetsForWorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int workoutId});
}

/// @nodoc
class __$$LoadSetsForWorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutSetEventCopyWithImpl<$Res, _$LoadSetsForWorkoutImpl>
    implements _$$LoadSetsForWorkoutImplCopyWith<$Res> {
  __$$LoadSetsForWorkoutImplCopyWithImpl(_$LoadSetsForWorkoutImpl _value,
      $Res Function(_$LoadSetsForWorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
  }) {
    return _then(_$LoadSetsForWorkoutImpl(
      null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadSetsForWorkoutImpl implements LoadSetsForWorkout {
  const _$LoadSetsForWorkoutImpl(this.workoutId);

  @override
  final int workoutId;

  @override
  String toString() {
    return 'WorkoutSetEvent.loadSetsForWorkout(workoutId: $workoutId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSetsForWorkoutImpl &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutId);

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSetsForWorkoutImplCopyWith<_$LoadSetsForWorkoutImpl> get copyWith =>
      __$$LoadSetsForWorkoutImplCopyWithImpl<_$LoadSetsForWorkoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSet workoutSet, int workoutId) addSet,
    required TResult Function(int setId, int workoutId) removeSet,
    required TResult Function(WorkoutSet workoutSet, int workoutId) updateSet,
    required TResult Function(int workoutId) loadSetsForWorkout,
  }) {
    return loadSetsForWorkout(workoutId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult? Function(int setId, int workoutId)? removeSet,
    TResult? Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult? Function(int workoutId)? loadSetsForWorkout,
  }) {
    return loadSetsForWorkout?.call(workoutId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSet workoutSet, int workoutId)? addSet,
    TResult Function(int setId, int workoutId)? removeSet,
    TResult Function(WorkoutSet workoutSet, int workoutId)? updateSet,
    TResult Function(int workoutId)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (loadSetsForWorkout != null) {
      return loadSetsForWorkout(workoutId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddSet value) addSet,
    required TResult Function(RemoveSet value) removeSet,
    required TResult Function(UpdateSet value) updateSet,
    required TResult Function(LoadSetsForWorkout value) loadSetsForWorkout,
  }) {
    return loadSetsForWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddSet value)? addSet,
    TResult? Function(RemoveSet value)? removeSet,
    TResult? Function(UpdateSet value)? updateSet,
    TResult? Function(LoadSetsForWorkout value)? loadSetsForWorkout,
  }) {
    return loadSetsForWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddSet value)? addSet,
    TResult Function(RemoveSet value)? removeSet,
    TResult Function(UpdateSet value)? updateSet,
    TResult Function(LoadSetsForWorkout value)? loadSetsForWorkout,
    required TResult orElse(),
  }) {
    if (loadSetsForWorkout != null) {
      return loadSetsForWorkout(this);
    }
    return orElse();
  }
}

abstract class LoadSetsForWorkout implements WorkoutSetEvent {
  const factory LoadSetsForWorkout(final int workoutId) =
      _$LoadSetsForWorkoutImpl;

  @override
  int get workoutId;

  /// Create a copy of WorkoutSetEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSetsForWorkoutImplCopyWith<_$LoadSetsForWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutSetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Workout workout) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Workout workout)? loaded,
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
abstract class $WorkoutSetStateCopyWith<$Res> {
  factory $WorkoutSetStateCopyWith(
          WorkoutSetState value, $Res Function(WorkoutSetState) then) =
      _$WorkoutSetStateCopyWithImpl<$Res, WorkoutSetState>;
}

/// @nodoc
class _$WorkoutSetStateCopyWithImpl<$Res, $Val extends WorkoutSetState>
    implements $WorkoutSetStateCopyWith<$Res> {
  _$WorkoutSetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutSetState
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
    extends _$WorkoutSetStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WorkoutSetState.initial()';
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
    required TResult Function(Workout workout) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Workout workout)? loaded,
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

abstract class _Initial implements WorkoutSetState {
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
    extends _$WorkoutSetStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WorkoutSetState.loading()';
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
    required TResult Function(Workout workout) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Workout workout)? loaded,
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

abstract class _Loading implements WorkoutSetState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$WorkoutSetStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$LoadedImpl(
      null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.workout);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutSetState.loaded(workout: $workout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  /// Create a copy of WorkoutSetState
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
    required TResult Function(Workout workout) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Workout workout)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(workout);
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

abstract class _Loaded implements WorkoutSetState {
  const factory _Loaded(final Workout workout) = _$LoadedImpl;

  Workout get workout;

  /// Create a copy of WorkoutSetState
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
    extends _$WorkoutSetStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetState
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
    return 'WorkoutSetState.error(message: $message)';
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

  /// Create a copy of WorkoutSetState
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
    required TResult Function(Workout workout) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Workout workout)? loaded,
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

abstract class _Error implements WorkoutSetState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
