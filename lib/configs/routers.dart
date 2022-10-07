import 'package:auto_route/auto_route.dart';
import 'package:vehicle_registration_system/pages/LeadingPage.dart';

import '../pages/AdminHomePage.dart';
import '../pages/Authentication/loginPage.dart';
import '../pages/userHomePage/UserHomePage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LeadingPage,
      initial: true,
      path: '/get-started',
    ),
    AutoRoute(
      page: UserHomePage,
      path: '/user-home',
    ),
    AutoRoute(
      page: LoginPage,
      path: '/login',
    ),
    AutoRoute(
      page: AdminHomePage,
      path: '/addmin-home',
    ),
  ],
)
class $AppRouter {}

// flutter packages pub run build_runner build