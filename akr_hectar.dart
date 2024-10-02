import 'package:flutter/material.dart';

final TextEditingController akrController = TextEditingController();
final TextEditingController hectarController = TextEditingController();
void convertakrTohectar(String akr) {
  if (akr.isEmpty) {
    hectarController.clear();
    return;
  }
  final double? akrValue = double.tryParse(akr);
  if (akrValue != null) {
    double hectar = akrValue * 2.47105381;
    hectarController.text = hectar.toStringAsFixed(2);
  }
}

void converthectarToakr(String hectar) {
  if (hectar.isEmpty) {
    akrController.clear();
    return;
  }

  final double? hectarValue = double.tryParse(hectar);
  if (hectarValue != null) {
    double akr = hectarValue / 2.47105381;
    akrController.text = akr.toStringAsFixed(2);
  }
}
