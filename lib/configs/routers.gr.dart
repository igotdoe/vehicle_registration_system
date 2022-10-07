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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/AdminHomePage.dart' as _i4;
import '../pages/Authentication/loginPage.dart' as _i3;
import '../pages/LeadingPage.dart' as _i1;
import '../pages/userHomePage/UserHomePage.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LeadingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LeadingPage(),
      );
    },
    UserHomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.UserHomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AdminHomePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/get-started',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          LeadingRoute.name,
          path: '/get-started',
        ),
        _i5.RouteConfig(
          UserHomeRoute.name,
          path: '/user-home',
        ),
        _i5.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i5.RouteConfig(
          AdminHomeRoute.name,
          path: '/addmin-home',
        ),
      ];
}

/// generated route for
/// [_i1.LeadingPage]
class LeadingRoute extends _i5.PageRouteInfo<void> {
  const LeadingRoute()
      : super(
          LeadingRoute.name,
          path: '/get-started',
        );

  static const String name = 'LeadingRoute';
}

/// generated route for
/// [_i2.UserHomePage]
class UserHomeRoute extends _i5.PageRouteInfo<void> {
  const UserHomeRoute()
      : super(
          UserHomeRoute.name,
          path: '/user-home',
        );

  static const String name = 'UserHomeRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.AdminHomePage]
class AdminHomeRoute extends _i5.PageRouteInfo<void> {
  const AdminHomeRoute()
      : super(
          AdminHomeRoute.name,
          path: '/addmin-home',
        );

  static const String name = 'AdminHomeRoute';
}
