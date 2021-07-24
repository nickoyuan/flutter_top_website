import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(title)
        ),
    );
  }
}
