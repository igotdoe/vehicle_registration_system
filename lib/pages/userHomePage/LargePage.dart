import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_registration_system/controllers/navigation.dart';
import 'package:vehicle_registration_system/pages/LeadingPage/FooterPage.dart';
import 'package:vehicle_registration_system/pages/userHomePage/screens/AppointmentPage.dart';
import 'package:vehicle_registration_system/pages/userHomePage/screens/vehicelPage.dart';
import 'package:vehicle_registration_system/pages/userHomePage/topbar.dart';

import 'screens/RoadWorth.dart';
import 'screens/lincensePage.dart';

class UserHomeLarge extends StatefulWidget {
  const UserHomeLarge({super.key});

  @override
  State<UserHomeLarge> createState() => _UserHomeLargeState();
}

class _UserHomeLargeState extends State<UserHomeLarge> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<NavigationController>(
        builder: (context, navigation, child) {
      return Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.1, 0.8],
          colors: [
            Color(0xFF2f1a3b),
            Color(0xFF6ccad1),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const UserHomeTopBar(),
              const SizedBox(height: 20),
              navigation.currentUserPage == UserPages.APPOINTMENT
                  ? const AppointmentPage()
                  : navigation.currentUserPage == UserPages.VEHICLE
                      ? const VehiclePage()
                      : navigation.currentUserPage == UserPages.LINCENSE
                          ? const LincesePage()
                          :  const RoadWorthPage()
                             ,
              const FooterPage()
            ],
          ),
        ),
      );
    });
  }
}
