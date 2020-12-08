import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:flutter/material.dart';

class BaseLogic {
  myFunction(int i, BaseState state) {
    final newInt = i + 5;
    state.myInt = newInt;
    final extraInt = state.myInt + 10;
    state.myInt = extraInt;
  }
}
