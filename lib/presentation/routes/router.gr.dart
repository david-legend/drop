// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/auth_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/category_item_screen.dart';
import '../screens/home_screen.dart';
import '../screens/interest_screen.dart';
import '../screens/product_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/verification_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String authScreen = '/auth-screen';
  static const String verificationScreen = '/verification-screen';
  static const String signUpScreen = '/sign-up-screen';
  static const String interestScreen = '/interest-screen';
  static const String homeScreen = '/home-screen';
  static const String categoriesScreen = '/categories-screen';
  static const String categoryItemScreen = '/category-item-screen';
  static const String productScreen = '/product-screen';
  static const String profileScreen = '/profile-screen';
  static const all = <String>{
    splashScreen,
    authScreen,
    verificationScreen,
    signUpScreen,
    interestScreen,
    homeScreen,
    categoriesScreen,
    categoryItemScreen,
    productScreen,
    profileScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.authScreen, page: AuthScreen),
    RouteDef(Routes.verificationScreen, page: VerificationScreen),
    RouteDef(Routes.signUpScreen, page: SignUpScreen),
    RouteDef(Routes.interestScreen, page: InterestScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.categoriesScreen, page: CategoriesScreen),
    RouteDef(Routes.categoryItemScreen, page: CategoryItemScreen),
    RouteDef(Routes.productScreen, page: ProductScreen),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    AuthScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthScreen(),
        settings: data,
      );
    },
    VerificationScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VerificationScreen(),
        settings: data,
      );
    },
    SignUpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen(),
        settings: data,
      );
    },
    InterestScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => InterestScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    CategoriesScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoriesScreen(),
        settings: data,
      );
    },
    CategoryItemScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoryItemScreen(),
        settings: data,
      );
    },
    ProductScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductScreen(),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
      );
    },
  };
}
