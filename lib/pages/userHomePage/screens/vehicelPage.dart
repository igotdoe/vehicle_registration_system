import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_registration_system/pages/userHomePage/Forms/VehicelRegistration.dart';
import '../../../utils/AppColors.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});
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
            'You have no registered Vehicle',
            style: GoogleFonts.poppins(
              color: Colors.grey,
            ),
          ),
          TextButton(
            onPressed: () {
              SmartDialog.show(
                alignment: Alignment.center,
                useAnimation: true,
                builder: (context) => const VehicelRegistration(),
              );
            },
            child: Text(
              'Register a Vehicle',
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
