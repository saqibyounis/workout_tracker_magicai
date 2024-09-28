import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_tracker_magicai/routes/app_router.gr.dart';

@Injectable()
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        // HomeScreen is generated as HomeRoute because
        // of the replaceInRouteName property
        AutoRoute(page: WorkOutListRoute.page, initial: true),
        AutoRoute(page: WorkoutDetailRoute.page),
      ];
}
