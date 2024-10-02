import 'package:flutter/material.dart';

final TextEditingController kmController = TextEditingController();
final TextEditingController milesController = TextEditingController();
void convertKmToMiles(String km) {
  if (km.isEmpty) {
    milesController.clear();
    return;
  }
  final double? kmValue = double.tryParse(km);
  if (kmValue != null) {
    double miles = kmValue * 0.621371;
    milesController.text = miles.toStringAsFixed(2);
  }
}

void convertMilesToKm(String miles) {
  if (miles.isEmpty) {
    kmController.clear();
    return;
  }

  final double? milesValue = double.tryParse(miles);
  if (milesValue != null) {
    double km = milesValue / 0.621371;
    kmController.text = km.toStringAsFixed(2);
  }
}
