import 'dart:ffi';

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor = const Color(0xff2E3B62);
  final Color? textColor = Color(0xffffffff);
  double? width = 216;
  final VoidCallback? onPressed;

  CustomizedButton(
      {Key? key,
      this.buttonText,
      this.width,
      this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 48,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
          ),
          child: Center(
            child: Text(
              buttonText!,
              style: GoogleFonts.montserrat(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
