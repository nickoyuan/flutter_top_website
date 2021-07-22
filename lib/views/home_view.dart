import 'package:flutter/material.dart';
import 'package:searchlog/views/centered_view.dart';
import 'package:searchlog/views/grid_layout/grid_layout.dart';
import 'package:searchlog/views/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 39, 37),
        body: SingleChildScrollView(
            child: Column(
          children: [
            NavigationBar(),
            CenteredView(child: GridLayout()),
            SizedBox(height: 100,)
          ],
        )));
  }
}
