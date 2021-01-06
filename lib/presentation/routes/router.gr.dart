// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../screens/auth_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/category_item_screen.dart';
import '../screens/check_out_screen.dart';
import '../screens/home_screen.dart';
import '../screens/interest_screen.dart';
import '../screens/product_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/verification_screen.dart';
import '../widgets/product_card.dart';

class Routes {
  static const String splashScreen = '/';
  static const String authScreen = '/auth-screen';
  static const String verificationScreen = '/verification-screen';
  static const String interestScreen = '/interest-screen';
  static const String homeScreen = '/home-screen';
  static const String categoriesScreen = '/categories-screen';
  static const String categoryItemScreen = '/category-item-screen';
  static const String productScreen = '/product-screen';
  static const String profileScreen = '/profile-screen';
  static const String checkOutScreen = '/check-out-screen';
  static const all = <String>{
    splashScreen,
    authScreen,
    verificationScreen,
    interestScreen,
    homeScreen,
    categoriesScreen,
    categoryItemScreen,
    productScreen,
    profileScreen,
    checkOutScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.authScreen, page: AuthScreen),
    RouteDef(Routes.verificationScreen, page: VerificationScreen),
    RouteDef(Routes.interestScreen, page: InterestScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.categoriesScreen, page: CategoriesScreen),
    RouteDef(Routes.categoryItemScreen, page: CategoryItemScreen),
    RouteDef(Routes.productScreen, page: ProductScreen),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
    RouteDef(Routes.checkOutScreen, page: CheckOutScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    AuthScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AuthScreen(),
        settings: data,
      );
    },
    VerificationScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => VerificationScreen(),
        settings: data,
      );
    },
    InterestScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => InterestScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    CategoriesScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CategoriesScreen(),
        settings: data,
      );
    },
    CategoryItemScreen: (data) {
      final args = data.getArgs<CategoryItemScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CategoryItemScreen(args.category),
        settings: data,
      );
    },
    ProductScreen: (data) {
      final args = data.getArgs<ProductScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProductScreen(args.product),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
      );
    },
    CheckOutScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CheckOutScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CategoryItemScreen arguments holder class
class CategoryItemScreenArguments {
  final String category;
  CategoryItemScreenArguments({@required this.category});
}

/// ProductScreen arguments holder class
class ProductScreenArguments {
  final ProductItem product;
  ProductScreenArguments({@required this.product});
}
