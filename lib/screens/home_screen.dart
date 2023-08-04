import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy_pet/models/doctor_model.dart';
import 'package:healthy_pet/widget/bottom_nav_bar_widget.dart';
import 'package:healthy_pet/widget/custom_banner_widget.dart';
import 'package:healthy_pet/widget/doctor_widget.dart';
import 'package:healthy_pet/widget/search_filter_widget.dart';
import 'package:healthy_pet/widget/top_nav_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Expanded(
            // Expanded is used to fill the remaining space
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: topNavBar(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: customBanner(),
                    ),
                    searchFilter(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return doctor(context: context, index: index);
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 15),
                        itemCount: doctors.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
