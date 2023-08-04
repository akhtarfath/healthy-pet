import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_pet/components/custom_button.dart';

Widget customBanner() {
  return Container(
    margin: const EdgeInsets.only(top: 17),
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF818AF9),
        borderRadius: BorderRadius.circular(14),
        image: const DecorationImage(
          image: AssetImage("assets/images/banner.png"),
          fit: BoxFit.fill,
        ),
      ),
      height: 204,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Your",
                style: GoogleFonts.manrope(
                  height: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFFFFFFFF),
                ),
                children: [
                  TextSpan(
                    text: " Catrine",
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  TextSpan(
                    text: " will get\nvaccination",
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  TextSpan(
                    text: " tomorrow\nat 07.00 am!",
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            customButton(
              text: "See details",
              textSize: 14,
              buttonColor: 0XFFFFFFFF,
              buttonOpacity: 0.2,
              textColor: 0XFFFFFFFF,
              buttonWidth: 115,
            )
          ],
        ),
      ),
    ),
  );
}
