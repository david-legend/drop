// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../screens/auth_screen.dart' as _i2;
import '../screens/categories_screen.dart' as _i6;
import '../screens/category_item_screen.dart' as _i7;
import '../screens/check_out_screen.dart' as _i10;
import '../screens/home_screen.dart' as _i5;
import '../screens/interest_screen.dart' as _i4;
import '../screens/product_screen.dart' as _i8;
import '../screens/profile_screen.dart' as _i9;
import '../screens/splash_screen.dart' as _i1;
import '../screens/verification_screen.dart' as _i3;
import '../widgets/product_card.dart' as _i13;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i1.SplashScreen());
    },
    AuthScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i2.AuthScreen());
    },
    VerificationScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i3.VerificationScreen());
    },
    InterestScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i4.InterestScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i5.HomeScreen());
    },
    CategoriesScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i6.CategoriesScreen());
    },
    CategoryItemScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryItemScreenRouteArgs>();
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i7.CategoryItemScreen(args.category));
    },
    ProductScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductScreenRouteArgs>();
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i8.ProductScreen(args.product));
    },
    ProfileScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i9.ProfileScreen());
    },
    CheckOutScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i10.CheckOutScreen());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i11.RouteConfig(AuthScreenRoute.name, path: '/auth-screen'),
        _i11.RouteConfig(VerificationScreenRoute.name,
            path: '/verification-screen'),
        _i11.RouteConfig(InterestScreenRoute.name, path: '/interest-screen'),
        _i11.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i11.RouteConfig(CategoriesScreenRoute.name,
            path: '/categories-screen'),
        _i11.RouteConfig(CategoryItemScreenRoute.name,
            path: '/category-item-screen'),
        _i11.RouteConfig(ProductScreenRoute.name, path: '/product-screen'),
        _i11.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen'),
        _i11.RouteConfig(CheckOutScreenRoute.name, path: '/check-out-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i11.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.AuthScreen]
class AuthScreenRoute extends _i11.PageRouteInfo<void> {
  const AuthScreenRoute() : super(AuthScreenRoute.name, path: '/auth-screen');

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [_i3.VerificationScreen]
class VerificationScreenRoute extends _i11.PageRouteInfo<void> {
  const VerificationScreenRoute()
      : super(VerificationScreenRoute.name, path: '/verification-screen');

  static const String name = 'VerificationScreenRoute';
}

/// generated route for
/// [_i4.InterestScreen]
class InterestScreenRoute extends _i11.PageRouteInfo<void> {
  const InterestScreenRoute()
      : super(InterestScreenRoute.name, path: '/interest-screen');

  static const String name = 'InterestScreenRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i11.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i6.CategoriesScreen]
class CategoriesScreenRoute extends _i11.PageRouteInfo<void> {
  const CategoriesScreenRoute()
      : super(CategoriesScreenRoute.name, path: '/categories-screen');

  static const String name = 'CategoriesScreenRoute';
}

/// generated route for
/// [_i7.CategoryItemScreen]
class CategoryItemScreenRoute
    extends _i11.PageRouteInfo<CategoryItemScreenRouteArgs> {
  CategoryItemScreenRoute({required String category})
      : super(CategoryItemScreenRoute.name,
            path: '/category-item-screen',
            args: CategoryItemScreenRouteArgs(category: category));

  static const String name = 'CategoryItemScreenRoute';
}

class CategoryItemScreenRouteArgs {
  const CategoryItemScreenRouteArgs({required this.category});

  final String category;

  @override
  String toString() {
    return 'CategoryItemScreenRouteArgs{category: $category}';
  }
}

/// generated route for
/// [_i8.ProductScreen]
class ProductScreenRoute extends _i11.PageRouteInfo<ProductScreenRouteArgs> {
  ProductScreenRoute({required _i13.ProductItem product})
      : super(ProductScreenRoute.name,
            path: '/product-screen',
            args: ProductScreenRouteArgs(product: product));

  static const String name = 'ProductScreenRoute';
}

class ProductScreenRouteArgs {
  const ProductScreenRouteArgs({required this.product});

  final _i13.ProductItem product;

  @override
  String toString() {
    return 'ProductScreenRouteArgs{product: $product}';
  }
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileScreenRoute extends _i11.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(ProfileScreenRoute.name, path: '/profile-screen');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i10.CheckOutScreen]
class CheckOutScreenRoute extends _i11.PageRouteInfo<void> {
  const CheckOutScreenRoute()
      : super(CheckOutScreenRoute.name, path: '/check-out-screen');

  static const String name = 'CheckOutScreenRoute';
}
