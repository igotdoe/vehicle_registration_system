
import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/pages/Authentication/rightSide.dart';
import 'leftSide.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>  {
  int index = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: const [
            LeftSide(),
            RightSide(),
          ],
        ),
      ),
    );
  }

  
}
