import 'package:healthy_pet/models/pet_model.dart';
import 'package:healthy_pet/models/service_model.dart';

class DoctorModel {
  String name;
  String image;
  List<String> services;
  int distance;
  List<PetModel> availableFor;

  DoctorModel(
      {required this.name,
      required this.image,
      required this.services,
      required this.distance,
      required this.availableFor});
}

var doctors = [
  DoctorModel(
    name: "Dr. Stone",
    image: "doctor_1.jpg",
    services: [ServiceModel.vaccine, ServiceModel.surgery],
    distance: 10,
    availableFor: [
      PetModel(name: "Cat", key: "cat"),
      PetModel(name: "Dog", key: "dog"),
    ],
  ),
  DoctorModel(
    name: "Dr. Vanesa",
    image: "doctor_2.jpg",
    services: [ServiceModel.vaccine, ServiceModel.surgery],
    distance: 10,
    availableFor: [
      PetModel(name: "Cat", key: "cat"),
      PetModel(name: "Dog", key: "dog"),
    ],
  ),
];
