import 'package:flutter/material.dart';
import 'package:km_miles_converter/km_miles.dart';
import 'package:km_miles_converter/duim_sant.dart';
import 'package:km_miles_converter/akr_hectar.dart';
import 'package:km_miles_converter/litr_galon.dart';
import 'package:km_miles_converter/kg_funts.dart';

class FunctionalOfApp extends StatefulWidget {
  const FunctionalOfApp({super.key});
  @override
  State<FunctionalOfApp> createState() {
    return _ValueConvector();
  }
}

class _ValueConvector extends State<FunctionalOfApp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(135, 206, 235, 1),
                  border: Border.all(width: 3, color: Colors.black)),
              child: SizedBox(
                width: 200,
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Кілометри',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: kmController,
                      onChanged: convertKmToMiles,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Милі',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: milesController,
                      onChanged: convertMilesToKm,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(240, 128, 128, 1),
                  border: Border.all(width: 3, color: Colors.black)),
              child: SizedBox(
                width: 200,
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Дюйми',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: duimController,
                      onChanged: convertduimTosantim,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Сантиметри',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: santimController,
                      onChanged: convertsantimToduim,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(152, 251, 152, 1),
                  border: Border.all(width: 3, color: Colors.black)),
              child: SizedBox(
                width: 200,
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Акри',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: akrController,
                      onChanged: convertakrTohectar,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Гектари',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: hectarController,
                      onChanged: converthectarToakr,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 250, 210, 1),
                  border: Border.all(width: 3, color: Colors.black)),
              child: SizedBox(
                width: 200,
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Кілограми',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: kgController,
                      onChanged: convertkgTofunt,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Фунти',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: funtController,
                      onChanged: convertfuntTokg,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(176, 196, 222, 1),
                  border: Border.all(width: 3, color: Colors.black)),
              child: SizedBox(
                width: 200,
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Літри',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: litrController,
                      onChanged: convertlitrTohalon,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Галони',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      controller: halonController,
                      onChanged: converthalonTolitr,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
