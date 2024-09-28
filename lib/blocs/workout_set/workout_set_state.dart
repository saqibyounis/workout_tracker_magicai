part of 'workout_set_bloc.dart';

@freezed
class WorkoutSetState with _$WorkoutSetState {
  const factory WorkoutSetState({
    @Default(false) bool isLoading,
    Workout? workout,
    String? errorMessage,
  }) = _WorkoutSetState;
}

extension WorkoutSetStateX on WorkoutSetState {
  bool get hasError => errorMessage != null && errorMessage!.isNotEmpty;
}
