import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_registration_system/controllers/navigation.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';

class LeftSide extends StatefulWidget {
  const LeftSide({super.key});

  @override
  State<LeftSide> createState() => _LeftSideState();
}

class _LeftSideState extends State<LeftSide> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
      builder: (context, navigation, child) {
        return Container(
          width: 400,
          color: primaryColor,
          child: Column(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: const EdgeInsets.all(20),
                    color: Colors.transparent,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Please Note that you will be required to verify your email address before you can login.\n The system will detect if you are an Admin or a User and will redirect you to the appropriate page.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              decoration: TextDecoration.none)),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Image.asset("assets/images/logo.png",scale: 1, width: 200,height: 200, ),
                
                ],
              ),
            )
          ]),
        );
      }
    );
  }
}
