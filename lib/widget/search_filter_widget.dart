import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_pet/models/service_model.dart';

import '../components/custom_button.dart';

var services = [];
var selectedService = 0;

Column searchFilter() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: _search(),
      ),
      const SizedBox(height: 20),
      _category(),
    ],
  );
}

SizedBox _category() {
  return SizedBox(
    height: 36,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Row(
        children: [
          index == 0 ? const SizedBox(width: 23) : const SizedBox(width: 0),
          customButton(
            text: ServiceModel.all()[index],
            textSize: 12,
            buttonColor: selectedService == index ? 0XFF818AF9 : 0XFFF6F6F6,
            buttonOpacity: selectedService == index ? 0.5 : 0.75,
            textColor: selectedService == index ? 0xFFFFFFFF : 0xFFBFBFBF,
          ),
          index == ServiceModel.all().length - 1
              ? const SizedBox(width: 23)
              : const SizedBox(width: 0),
        ],
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemCount: ServiceModel.all().length,
    ),
  );
}

Widget _search() {
  return Column(
    children: [
      const SizedBox(height: 21),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF6F6F6),
          hintText: "Find best vaccinate, treatment...",
          hintStyle: GoogleFonts.manrope(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: const Color(0xFFCACACA),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFFADACAD),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFFF6F6F6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFFF6F6F6),
            ),
          ),
        ),
      ),
    ],
  );
}
