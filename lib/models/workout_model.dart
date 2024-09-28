import 'package:objectbox/objectbox.dart';

import 'workout_set_model.dart';

enum WorkoutStatus {
  inProgress,
  finished,
}

@Entity()
class Workout {
  @Id()
  int id = 0;

  @Property(type: PropertyType.date)
  DateTime date;

  @Backlink()
  final ToMany<WorkoutSet> sets = ToMany<WorkoutSet>();

  int _status = WorkoutStatus.inProgress.index;

  Workout({this.id = 0, required this.date, status = WorkoutStatus.inProgress});

  WorkoutStatus get status => WorkoutStatus.values[_status];

  set status(WorkoutStatus status) {
    _status = status.index;
  }
}
