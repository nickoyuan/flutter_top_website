import 'package:flutter/material.dart';
import 'package:searchlog/views/cards/accommodation.dart';
import 'package:searchlog/views/cards/shared_accommodation.dart';
import 'package:searchlog/views/cards/student_accomodation.dart';
import 'package:searchlog/views/cards/travel.dart';
import 'package:searchlog/views/centered_view.dart';
import 'cards/flights.dart';
import 'cards/news.dart';
import 'cards/top_places.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text(title)),
      body: CenteredView(child: showTitleDetails(title)),
    );
  }

  showTitleDetails(String title) {
    switch (title) {
      case "News":
        return News();
      case "Flights":
        return Flights();
      case "Shared Accommodations":
        return SharedAccommodation();
      case "Student Accommodations":
        return StudentAccommodation();
      case "Travel":
        return Travel();
      case "Hotel":
        return Hotel();
      case "Private Accommodation":
        return Accommodation();
    }
  }
}
