import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/AppColors.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons(
      {super.key,
      this.isSelected = false,
      this.isHover = false,
      this.onPressed,
      this.onHover,
      required this.text});
  final bool? isSelected;
  final bool? isHover;
  final VoidCallback? onPressed;
  final Function(bool)? onHover;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      onHover: onHover,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected!
              ? primaryColor.withOpacity(.9)
              : isHover!
                  ? primaryColor.withOpacity(.4)
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(10),

          //borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 16,
            color: isHover! || isSelected! ? whiteColors : Colors.black,
            fontWeight:
                isHover! || isSelected! ? FontWeight.bold : FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
