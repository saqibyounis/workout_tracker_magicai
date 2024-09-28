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
  bool get isLoading => throw _privateConstructorUsedError;
  Workout? get workout => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutSetStateCopyWith<WorkoutSetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSetStateCopyWith<$Res> {
  factory $WorkoutSetStateCopyWith(
          WorkoutSetState value, $Res Function(WorkoutSetState) then) =
      _$WorkoutSetStateCopyWithImpl<$Res, WorkoutSetState>;
  @useResult
  $Res call({bool isLoading, Workout? workout, String? errorMessage});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? workout = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutSetStateImplCopyWith<$Res>
    implements $WorkoutSetStateCopyWith<$Res> {
  factory _$$WorkoutSetStateImplCopyWith(_$WorkoutSetStateImpl value,
          $Res Function(_$WorkoutSetStateImpl) then) =
      __$$WorkoutSetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Workout? workout, String? errorMessage});
}

/// @nodoc
class __$$WorkoutSetStateImplCopyWithImpl<$Res>
    extends _$WorkoutSetStateCopyWithImpl<$Res, _$WorkoutSetStateImpl>
    implements _$$WorkoutSetStateImplCopyWith<$Res> {
  __$$WorkoutSetStateImplCopyWithImpl(
      _$WorkoutSetStateImpl _value, $Res Function(_$WorkoutSetStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? workout = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$WorkoutSetStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WorkoutSetStateImpl implements _WorkoutSetState {
  const _$WorkoutSetStateImpl(
      {this.isLoading = false, this.workout, this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Workout? workout;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WorkoutSetState(isLoading: $isLoading, workout: $workout, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutSetStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.workout, workout) || other.workout == workout) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, workout, errorMessage);

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutSetStateImplCopyWith<_$WorkoutSetStateImpl> get copyWith =>
      __$$WorkoutSetStateImplCopyWithImpl<_$WorkoutSetStateImpl>(
          this, _$identity);
}

abstract class _WorkoutSetState implements WorkoutSetState {
  const factory _WorkoutSetState(
      {final bool isLoading,
      final Workout? workout,
      final String? errorMessage}) = _$WorkoutSetStateImpl;

  @override
  bool get isLoading;
  @override
  Workout? get workout;
  @override
  String? get errorMessage;

  /// Create a copy of WorkoutSetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutSetStateImplCopyWith<_$WorkoutSetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
