import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hint,
      this.isPassword = false,
      this.keyboardType,
      this.maxLines = 1,
      this.controller,
      this.isCapsOnly = false,
      this.onChanged,
      this.width = 400});
  final String? hint;
  final bool? isPassword;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final int maxLines;
  final double? width;
  final bool? isCapsOnly;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: SizedBox(
          width: width!,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hint!,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              TextFormField(
                  controller: controller,
                  keyboardType: keyboardType,
                  obscureText: isPassword!,
                  maxLines: maxLines,
                  onSaved: onChanged,
                  inputFormatters: [
                    if (isCapsOnly!) UpperCaseTextFormatter(),
                  ],
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 10,
                        borderSide: BorderSide(width: 2, color: primaryColor),
                      ))),
            ],
          ),
        ));
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class LoginTextField extends StatelessWidget {
  const LoginTextField(
      {super.key,
      this.label,
      this.hint,
      this.suffixIcon,
      this.prefixIcon,
      this.isPassword = false,
      this.keyboardType,
      this.controller});
  final String? label;
  final String? hint;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final bool? isPassword;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          Text(
            label!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: TextField(
                controller: controller,
                keyboardType: keyboardType,
                obscureText: isPassword!,
                decoration: InputDecoration(
                    labelText: hint,
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: prefixIcon != null
                        ? Icon(
                            prefixIcon,
                            color: primaryColor,
                          )
                        : null,
                    suffixIcon: suffixIcon != null
                        ? Icon(
                            suffixIcon,
                            color: primaryColor,
                          )
                        : null,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide:
                          const BorderSide(width: 2, color: primaryColor),
                      borderRadius: BorderRadius.circular(5),
                    ))))
      ],
    );
  }
}
