import 'package:baseapp/models/city.dart';
import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:baseapp/screens/base/ui/base_gate.dart';
import 'package:baseapp/screens/base/ui/base_screen.dart';
import 'package:baseapp/themes/est_theme_dark.dart';
import 'package:baseapp/themes/est_theme_light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: EstThemeLight().data,
      darkTheme: EstThemeDark().data,
      themeMode: ThemeMode.light,
      initialRoute: '/',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BaseGate(),
      ),
    );
  }

  void dispose() {
    super.dispose();
  }
}
