import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenHeader extends StatefulWidget {
  @override
  _ScreenHeaderState createState() => _ScreenHeaderState();
}

class _ScreenHeaderState extends State<ScreenHeader> {
  String header;

  @override
  void initState() {
    final state = context.read<BaseState>();
    header = state.header;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Text(
      header,
      style: TextStyle(
        fontSize: 26,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
