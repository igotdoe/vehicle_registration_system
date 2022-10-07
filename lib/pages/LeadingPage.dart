import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/pages/LeadingPage/LeadingPageLarge.dart';
import '../utils/responsiveLayout.dart';
import 'LeadingPage/LeadingPageSmall.dart';


class LeadingPage extends StatelessWidget {
  const LeadingPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      body:  const  ResponsiveLayout(
            largeScreen: LeadingPageLarge(),
            smallScreen: LeadingPageSmall(),
          ),
     
    );
  }
}
