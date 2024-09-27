import 'package:objectbox/objectbox.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';

@Entity()
class WorkoutSet {
  @Id()
  int id = 0;

  String exercise;
  double weight; // Note:- Weight used in kilograms
  int repetitions;
  final ToOne<Workout> workout = ToOne<Workout>();

  WorkoutSet({
    this.id = 0,
    required this.exercise,
    required this.weight,
    required this.repetitions,
  });
}
