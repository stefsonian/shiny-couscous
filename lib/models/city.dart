import 'dart:math';

import 'package:flutter/material.dart';

class City {
  final String name;
  final int population;
  final Color color = Colors.primaries[Random().nextInt(
    Colors.primaries.length,
  )];

  City({this.name, this.population});
}
