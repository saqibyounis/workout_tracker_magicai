import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_tracker_magicai/generated/l10n.dart';
import 'package:workout_tracker_magicai/models/workout_model.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';
import 'package:workout_tracker_magicai/screens/workout_list/widgets/workout_card.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('WorkoutCard Widget Tests', () {
    late Workout mockWorkout;

    setUp(() {
      mockWorkout = Workout(
        date: DateTime(2023, 9, 28),
        status: WorkoutStatus.inProgress.index,
      )..sets.addAll([
          WorkoutSet(exercise: 'Bench Press', weight: 80, repetitions: 10),
          WorkoutSet(exercise: 'Squats', weight: 100, repetitions: 8),
        ]);
    });

    Future<void> loadTestableWidget(WidgetTester tester, Widget child) async {
      await S.load(const Locale('en'));

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale('en'),
          home: Scaffold(body: child),
        ),
      );
    }

    testWidgets('displays workout information correctly',
        (WidgetTester tester) async {
      await loadTestableWidget(
        tester,
        WorkoutCard(
          workout: mockWorkout,
          onRemovePressed: (_) {},
          onFinishPressed: (_) {},
          onTap: (_) {},
        ),
      );

      expect(find.textContaining('Workout on'), findsOneWidget);
      expect(find.text('In Progress'), findsOneWidget);

      expect(find.textContaining('Total Sets:: 2'), findsOneWidget);

      expect(find.text('Bench Press - 80.0kg, 10 reps'), findsOneWidget);
      expect(find.text('Squats - 100.0kg, 8 reps'), findsOneWidget);
    });
  });
}
