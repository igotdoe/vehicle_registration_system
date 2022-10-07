import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10),
      width: size.width,
      height: size.height * .8,
      child: Center(
          child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You have no Appointment',
            style: GoogleFonts.poppins(
              color: Colors.grey,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Make a Request',
              style: GoogleFonts.poppins(
                color: primaryColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
