import 'package:baseapp/models/city.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaseState extends ChangeNotifier {
  // this file contains all info needed to display any widget
  // under the home_screen widget.
  // ...such a currently selected sorting and filtering, currency, local values

  final String header = 'Cities';
  bool _isCitiesVisible = false;
  List<City> _cities = [
    City(name: 'Melbourne', population: 4936000),
    City(name: 'Sydney', population: 5230000),
    City(name: 'Brisbane', population: 2280000),
    City(name: 'Perth', population: 1985000),
    City(name: 'Adelaide', population: 1306000),
    City(name: 'Hobart', population: 206097),
  ];
  int _myInt = 10;

  // setters and getters

  bool get isCitiesVisible => _isCitiesVisible;
  set isCitiesVisible(bool isCitiesVisible) {
    _isCitiesVisible = isCitiesVisible;
    notifyListeners();
  }

  addCity(String name, int population) {
    _cities.add(City(name: name, population: population));
    notifyListeners();
  }

  List<City> get cities => _cities;
  set cities(List<City> cities) {
    _cities = cities;
    notifyListeners();
  }

  int get myInt => _myInt;
  set myInt(int myInt) {
    _myInt = myInt;
    notifyListeners();
  }
}
