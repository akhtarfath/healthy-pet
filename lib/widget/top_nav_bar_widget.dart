import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget topNavBar() {
  return Padding(
    padding: const EdgeInsets.only(top: 22),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "Hello, Human!",
            style: GoogleFonts.manrope(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: const Color(0xFF3F3E3F),
            ),
          ),
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/shopping-bag.png",
                width: 28,
                height: 28,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEF6497),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
                child: Column(
                  children: [
                    Text(
                      '2',
                      textAlign: TextAlign.end,
                      style: GoogleFonts.manrope(
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
