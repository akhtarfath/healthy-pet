import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_pet/models/pet_model.dart';

Container customCard({
  required String image,
  required String title,
  required List<String> service,
  required String distance,
  required List<PetModel> availableFor,
}) {
  List<Widget> listPetWidget = [];
  for (var i = 0; i < availableFor.length; i++) {
    listPetWidget.add(
      Row(
        children: [
          i == 0 ? const SizedBox(width: 0) : const SizedBox(width: 10),
          Column(
            children: [
              Image.asset("assets/images/whh_${availableFor[i].key}.png"),
              Text(
                availableFor[i].name,
                style: GoogleFonts.manrope(
                  fontSize: 9,
                  fontWeight: FontWeight.normal,
                  color: const Color(0XFF3F3E3F),
                ),
              ),
            ],
          ),
          i == availableFor.length - 1
              ? const SizedBox(width: 0)
              : const SizedBox(width: 10),
        ],
      ),
    );
  }

  return Container(
    height: 183,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(14),
      boxShadow: const [
        BoxShadow(
          color: Color(0xFFE0E0E0),
          blurRadius: 30,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.manrope(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: const Color(0XFF3F3E3F),
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  "Services: ${service.join(", ").toString()}",
                  style: GoogleFonts.manrope(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: const Color(0XFF000000),
                  ),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const Icon(
                      Icons.map_outlined,
                      color: Color(0XFFACA3A3),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      distance,
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: const Color(0XFFACA3A3),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Available for",
                      style: GoogleFonts.manrope(
                        color: const Color(0XFF50CC98),
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: listPetWidget,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
