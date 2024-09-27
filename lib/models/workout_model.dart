import 'package:objectbox/objectbox.dart';

import 'workout_set_model.dart';

@Entity()
class Workout {
  @Id()
  int id = 0;

  @Property(type: PropertyType.date)
  DateTime date;

  @Backlink()
  final ToMany<WorkoutSet> sets = ToMany<WorkoutSet>();

  Workout({
    this.id = 0,
    required this.date,
  });
}
