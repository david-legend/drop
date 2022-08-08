import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/screens/check_out_screen.dart';
import 'package:drop/presentation/screens/profile_screen.dart';
import 'package:drop/presentation/screens/auth_screen.dart';
import 'package:drop/presentation/screens/categories_screen.dart';
import 'package:drop/presentation/screens/category_item_screen.dart';
import 'package:drop/presentation/screens/home_screen.dart';
import 'package:drop/presentation/screens/interest_screen.dart';
import 'package:drop/presentation/screens/product_screen.dart';
import 'package:drop/presentation/screens/splash_screen.dart';
import 'package:drop/presentation/screens/verification_screen.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    CupertinoRoute(page: SplashScreen, initial: true),

    //OnBoarding and AuthenticationScreens
    CupertinoRoute(page: AuthScreen),
    CupertinoRoute(page: VerificationScreen),
    CupertinoRoute(page: InterestScreen),

    //Inside App
    CupertinoRoute(page: HomeScreen),
    CupertinoRoute(page: CategoriesScreen),
    CupertinoRoute(page: CategoryItemScreen),
    CupertinoRoute(page: ProductScreen),
    CupertinoRoute(page: ProfileScreen),
    CupertinoRoute(page: CheckOutScreen),
  ],
)
class $AppRouter {}
