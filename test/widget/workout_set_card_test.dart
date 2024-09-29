import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_tracker_magicai/blocs/workout_set/workout_set_bloc.dart';
import 'package:workout_tracker_magicai/generated/l10n.dart';
import 'package:workout_tracker_magicai/models/workout_set_model.dart';
import 'package:workout_tracker_magicai/screens/workout_detail/widgets/workout_card.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('WorkoutSetCard Widget Tests', () {
    late WorkoutSet mockWorkoutSet;
    late WorkoutSetBloc workoutSetBloc;

    setUp(() {
      mockWorkoutSet = WorkoutSet(
        exercise: 'Bench Press',
        weight: 80,
        repetitions: 10,
      );
    });

    Future<void> loadTestableWidget(WidgetTester tester, Widget child) async {
      await S.load(const Locale('en'));

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale('en'),
          home: Scaffold(body: child),
        ),
      );
    }

    testWidgets('displays workout set data correctly',
        (WidgetTester tester) async {
      await loadTestableWidget(
        tester,
        WorkoutSetCard(
          workoutSet: mockWorkoutSet,
          exercises: ['Bench Press', 'Squats', 'Deadlift'],
          onRemove: () {},
          workoutId: 1,
        ),
      );

      expect(find.text('Bench Press'), findsOneWidget);
      expect(find.text('80.0'), findsOneWidget);
      expect(find.text('10'), findsOneWidget);
    });
  });
}
