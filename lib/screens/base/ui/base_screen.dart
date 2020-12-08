import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:baseapp/screens/base/ui/city_card.dart';
import 'package:baseapp/screens/base/ui/screen_header.dart';
import 'package:baseapp/screens/base/ui/visibility_toggle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // define variables
    final state = context.watch<BaseState>();

    final cityCards = List.generate(
      state.cities.length,
      (index) => CityCard(city: state.cities[index]),
    );

    final int citiesWidgetsIndex = state.isCitiesVisible ? 0 : 1;
    final citiesWidgets = [
      ListView.builder(
        shrinkWrap: true,
        itemCount: cityCards.length,
        itemBuilder: (context, index) => cityCards[index],
      ),
      Container(),
    ];

    // display widget
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 4),
          color: Colors.blueGrey,
          child: Column(
            children: [
              SizedBox(height: 20),
              ScreenHeader(),
              Divider(),
              Expanded(
                // child: state.isCitiesVisible
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 1800),
                  child: citiesWidgets[citiesWidgetsIndex],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            VisibilityToggle(
              toggleVisibility: () {
                state.isCitiesVisible = !state.isCitiesVisible;
              },
            ),
            SizedBox(width: 40),
            FloatingActionButton(
              heroTag: 'add city',
              child: Icon(Icons.add),
              onPressed: () {
                state.addCity('Rio de Janeiro', 6320000);
              },
            ),
          ],
        ),
      ),
    );
  }
}
