import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/pages/userHomePage/LargePage.dart';
import 'package:vehicle_registration_system/utils/responsiveLayout.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen:  UserHomeLarge() ,
      smallScreen:  UserHomeLarge(),
    );
  }
}