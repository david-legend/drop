import 'package:auto_route/auto_route_annotations.dart';
import 'package:drop/presentation/screens/about_screen.dart';
import 'package:drop/presentation/screens/auth_screen.dart';
import 'package:drop/presentation/screens/categories_screen.dart';
import 'package:drop/presentation/screens/category_item_screen.dart';
import 'package:drop/presentation/screens/home_screen.dart';
import 'package:drop/presentation/screens/interest_screen.dart';
import 'package:drop/presentation/screens/product_screen.dart';
import 'package:drop/presentation/screens/sign_up_screen.dart';
import 'package:drop/presentation/screens/splash_screen.dart';
import 'package:drop/presentation/screens/verification_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),

    //OnBoarding and AuthenticationScreens
    MaterialRoute(page: AuthScreen),
    MaterialRoute(page: VerificationScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: InterestScreen),

    //Inside App
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: CategoriesScreen),
    MaterialRoute(page: CategoryItemScreen),
    MaterialRoute(page: ProductScreen),
    MaterialRoute(page: AboutScreen),
  ],
)
class $AppRouter {}
