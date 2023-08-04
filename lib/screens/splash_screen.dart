import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_pet/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome is used to change the status bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    // Delay the splash screen for 3 seconds
    Future.delayed(const Duration(seconds: 3)).then((value) => {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const HomeScreen()),
              (route) => false)
        });

    // Scaffold is used to display the splash screen
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background.png'),
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 42,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 144,
                  height: 22,
                ),
              ),
              const SizedBox(
                height: 73,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Helping you\nto keep",
                  style: GoogleFonts.manrope(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFFDEE1FE),
                    letterSpacing: 3.5 / 100,
                    height: 152 / 100,
                  ),
                  children: [
                    TextSpan(
                      text: " your bestie",
                      style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: " \nstay healthy!",
                      style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
