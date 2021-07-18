import 'package:flutter/material.dart';
import 'package:searchlog/views/centered_view.dart';
import 'package:searchlog/views/navigation_bar.dart';
import 'cards/grid_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[
          Expanded(
              child: ListView(
            children: [
              NavigationBar(),
              CenteredView(child: GridLayout())
            ],
          ))
        ]));
  }
}
