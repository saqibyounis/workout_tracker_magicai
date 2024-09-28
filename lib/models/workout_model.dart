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

  int status = 0;

  Workout({this.id = 0, required this.date, this.status = 0});

  // Get the enum from the stored int
  WorkoutStatus getStatus() => WorkoutStatus.values[status];

  // Set the enum and store its index
  void setstatus(WorkoutStatus statusEnum) {
    status = statusEnum.index;
  }
}
