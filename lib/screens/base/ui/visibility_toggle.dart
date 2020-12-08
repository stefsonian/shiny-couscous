import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VisibilityToggle extends StatelessWidget {
  const VisibilityToggle({Key key, this.toggleVisibility}) : super(key: key);
  final Function toggleVisibility;

  Widget build(BuildContext context) {
    final bool isVisible = context.select(
      (BaseState state) => state.isCitiesVisible,
    );
    // final state = context<>.watch();
    return FloatingActionButton(
      heroTag: 'visibility toggle',
      onPressed: toggleVisibility,
      child: isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
    );
  }
}
