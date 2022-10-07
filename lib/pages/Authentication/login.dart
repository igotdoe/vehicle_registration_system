import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';
import 'package:vehicle_registration_system/widget/textField.dart';

import '../../configs/routers.gr.dart';

class LoginPart extends StatefulWidget {
  const LoginPart({super.key});

  @override
  State<LoginPart> createState() => _LoginPartState();
}

class _LoginPartState extends State<LoginPart> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: size.width * .5,
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("LOG IN",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none)),
                    ),
                    const SizedBox(height: 20),
                    LoginTextField(
                      hint: "User Email",
                      prefixIcon: Icons.email,
                      controller: _emailController,
                      isPassword: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20),
                    LoginTextField(
                      hint: "Password",
                      controller: _passwordController,
                      prefixIcon: Icons.lock,
                      isPassword: true,
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 15),
                          backgroundColor: primaryColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          AutoRouter.of(context)
                              .push(const UserHomeRoute());
                        },
                        child: const Text('Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none))),
                    const SizedBox(height: 20),
                  ])),
            ),
          ),
        ),
      ],
    );
  }
}
