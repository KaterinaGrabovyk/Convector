import 'package:flutter/material.dart';

final TextEditingController litrController = TextEditingController();
final TextEditingController halonController = TextEditingController();
void convertlitrTohalon(String litr) {
  if (litr.isEmpty) {
    halonController.clear();
    return;
  }
  final double? litrValue = double.tryParse(litr);
  if (litrValue != null) {
    double halon = litrValue * 3.78541178;
    halonController.text = halon.toStringAsFixed(2);
  }
}

void converthalonTolitr(String halon) {
  if (halon.isEmpty) {
    litrController.clear();
    return;
  }

  final double? halonValue = double.tryParse(halon);
  if (halonValue != null) {
    double litr = halonValue / 3.78541178;
    litrController.text = litr.toStringAsFixed(2);
  }
}
