import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../configs/routers.gr.dart';

class NavigationController extends ChangeNotifier {
  Pages? _pages = Pages.HOME;
  Pages get currentPage => _pages!;
  void switchPage(Pages page, BuildContext context) {
    _pages = page;
    if (page == Pages.LOGIN) {
      AutoRouter.of(context).push(const LoginRoute());
    }
    notifyListeners();
  }

  Pages? hoverPage = Pages.HOME;
  Pages get currentHoverPage => hoverPage!;

  onHover(bool val, Pages home) {
    if (!val) {
      hoverPage = _pages;
    } else {
      hoverPage = home;
    }
    notifyListeners();
  }

  int authPage = 1;
  int get currentAuthPage => authPage;

  changePage(int i) {
    authPage = i;
    notifyListeners();
  }

  UserPages userPages = UserPages.APPOINTMENT;

  UserPages get currentUserPage => userPages;

  changeUserPage(UserPages page) {
  
    userPages = page;
    notifyListeners();
  }

  UserPages? userHoverPage = UserPages.APPOINTMENT;
  UserPages get currentUserHoverPage => userHoverPage!;
  onUserHover(bool val, UserPages page) {
    if (!val) {
      userHoverPage = userPages;
    } else {
      userHoverPage = page;
    }
    notifyListeners();
  }
}

enum Pages { HOME, LOGIN, ABOUT, CONTACT, SERVICES }

enum UserPages { APPOINTMENT, VEHICLE, ROAD, LINCENSE, SIGNOUT }
