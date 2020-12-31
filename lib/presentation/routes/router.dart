import 'package:auto_route/auto_route_annotations.dart';
import 'package:drop/presentation/screens/auth_screen.dart';
import 'package:drop/presentation/screens/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),

    //OnBoarding and AuthenticationScreens
    MaterialRoute(page: AuthScreen),
  ],
)
class $AppRouter {}
