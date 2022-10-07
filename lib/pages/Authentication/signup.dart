import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vehicle_registration_system/widget/textField.dart';

import '../../utils/AppColors.dart';

class SignUpPart extends StatefulWidget {
  const SignUpPart({super.key});

  @override
  State<SignUpPart> createState() => _SignUpPartState();
}

class _SignUpPartState extends State<SignUpPart> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phonController = TextEditingController();
  String? imageFile;
  Uint8List webImage = Uint8List(10);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: size.width * .5,
              height: size.height*.8,
              child: SingleChildScrollView(
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text("NEW USER",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none)),
                  ),
                  const SizedBox(height: 10),
                  uploadImage(),
                  const SizedBox(height: 10),
                  LoginTextField(
                    hint: "User Email",
                    prefixIcon: Icons.email,
                    controller: _emailController,
                    isPassword: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 10),
                  LoginTextField(
                    hint: "Full Name",
                    prefixIcon: Icons.person,
                    controller: _nameController,
                    isPassword: false,
                    keyboardType: TextInputType.text,
                  ),
                  LoginTextField(
                    hint: "user phone",
                    prefixIcon: Icons.call,
                    controller: _phonController,
                    isPassword: false,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 10),
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
                      onPressed: () {},
                      child: const Text('Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none))),
                  const SizedBox(height: 10),
                ]),
              )),
        ),
      ),
    );
  }

  void pickUploadProfilePic() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 512,
      maxWidth: 512,
      imageQuality: 90,
    );
    if (image != null) {
      var file = await image.readAsBytes();
      setState(() {    
        imageFile = "hasFile";  
        webImage = file;
      });
    }
  }

  Widget uploadImage() {
    return GestureDetector(
      onTap: () {
        pickUploadProfilePic();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        child: Center(
          child: imageFile == null
              ? const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 80,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.memory(webImage,
                      height: 100, width: 100, fit: BoxFit.cover),
                ),
        ),
      ),
    );
  }
}
