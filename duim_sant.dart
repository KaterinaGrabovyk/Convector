import 'package:flutter/material.dart';

final TextEditingController duimController = TextEditingController();
final TextEditingController santimController = TextEditingController();
void convertduimTosantim(String duim) {
  if (duim.isEmpty) {
    santimController.clear();
    return;
  }
  final double? duimValue = double.tryParse(duim);
  if (duimValue != null) {
    double santim = duimValue * 2.54;
    santimController.text = santim.toStringAsFixed(2);
  }
}

void convertsantimToduim(String santim) {
  if (santim.isEmpty) {
    duimController.clear();
    return;
  }

  final double? santimValue = double.tryParse(santim);
  if (santimValue != null) {
    double duim = santimValue / 2.54;
    duimController.text = duim.toStringAsFixed(2);
  }
}
