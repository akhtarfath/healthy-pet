import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customButton({
  required String text,
  required double textSize,
  required int buttonColor,
  required double buttonOpacity,
  required int textColor,
  double buttonWidth = 0.0,
}) {
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 0),
      ),
      backgroundColor: MaterialStateProperty.all(
        Color(buttonColor).withOpacity(buttonOpacity),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
    child: buttonWidth == 0.0
        ? Container(
            height: 46,
            decoration: BoxDecoration(
              color: Color(buttonColor).withOpacity(buttonOpacity),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(buttonColor).withOpacity(buttonOpacity),
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.manrope(
                    fontSize: textSize,
                    fontWeight: FontWeight.w900,
                    color: Color(textColor),
                  ),
                ),
              ),
            ),
          )
        : Container(
            width: buttonWidth,
            height: 46,
            decoration: BoxDecoration(
              color: Color(buttonColor).withOpacity(buttonOpacity),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(buttonColor).withOpacity(buttonOpacity),
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.manrope(
                    fontSize: textSize,
                    fontWeight: FontWeight.w900,
                    color: Color(textColor),
                  ),
                ),
              ),
            ),
          ),
  );
}
