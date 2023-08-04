import 'package:flutter/material.dart';
import 'package:healthy_pet/components/custom_card.dart';

import '../models/doctor_model.dart';

Column doctor({
  required BuildContext context,
  required int index,
}) {
  return Column(
    children: [
      index == 0 ? const SizedBox(height: 28) : const SizedBox(height: 0),
      customCard(
        image: "assets/images/${doctors[index].image}",
        title: doctors[index].name,
        service: doctors[index].services,
        distance: "${doctors[index].distance}km",
        availableFor: doctors[index].availableFor,
      ),
      index == doctors.length - 1
          ? const SizedBox(height: 15)
          : const SizedBox(height: 0),
    ],
  );
}
