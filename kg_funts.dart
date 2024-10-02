import 'package:flutter/material.dart';

final TextEditingController kgController = TextEditingController();
final TextEditingController funtController = TextEditingController();
void convertkgTofunt(String kg) {
  if (kg.isEmpty) {
    funtController.clear();
    return;
  }
  final double? kgValue = double.tryParse(kg);
  if (kgValue != null) {
    double funt = kgValue /2.20462262;
    funtController.text = funt.toStringAsFixed(2);
  }
}

void convertfuntTokg(String funt) {
  if (funt.isEmpty) {
    kgController.clear();
    return;
  }

  final double? funtValue = double.tryParse(funt);
  if (funtValue != null) {
    double kg = funtValue * 2.20462262;
    kgController.text = kg.toStringAsFixed(2);
  }
}
