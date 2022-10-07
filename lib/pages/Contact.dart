import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';
import 'package:vehicle_registration_system/widget/textField.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        color: whiteColors,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        alignment: Alignment.center,
        child: Wrap(
          spacing: 8,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          runSpacing: 30,
          children: [
            CustomTextField(
              hint: 'Your Name',
              keyboardType: TextInputType.name,
              controller: _nameController,
              width: 300,
            ),
            CustomTextField(
              hint: 'Your Email',
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              width: 300,
            ),
            CustomTextField(
              hint: 'Your Phone',
              keyboardType: TextInputType.emailAddress,
              controller: _phoneController,
              width: 300,
            ),
            CustomTextField(
              hint: 'Your Message',
              width: size.width * .6,
              keyboardType: TextInputType.emailAddress,
              controller: _messageController,
              maxLines: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * .4,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {},
                      child: const Text(
                        'Submit message',
                        style: TextStyle(
                            fontSize: 20,
                            color: whiteColors,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
