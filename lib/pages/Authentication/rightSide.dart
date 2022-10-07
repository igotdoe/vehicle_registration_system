
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_registration_system/pages/Authentication/login.dart';
import 'package:vehicle_registration_system/pages/Authentication/signup.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';

class RightSide extends StatefulWidget {
  const RightSide({super.key});

  @override
  State<RightSide> createState() => _RightSideState();
}

class _RightSideState extends State<RightSide>   {
 
 int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [   
            currentIndex==0?
            const LoginPart():const SignUpPart(),
            currentIndex==0?
             TextButton(
              style: TextButton.styleFrom(
             
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
              ),
              onPressed: (){
                setState(() {
                  currentIndex=1;              
                });
              },
              child: Text(
                'New User? Register Here',
                style: GoogleFonts.poppins(
                    color: primaryColor, fontWeight: FontWeight.bold),
              )): TextButton(
                  style: TextButton.styleFrom(
                    
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 15),
                  ),
                  onPressed: (){
                    setState(() {
                      currentIndex=0;              
                    });
                  },
                  child: Text(
                    'Already have an account? Login',
                    style: GoogleFonts.poppins(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  )),
          
         ]),
      ),
    );
  }





}
