import 'package:flutter/material.dart';
import 'package:searchlog/views/centered_view.dart';
import 'package:searchlog/views/navigation_bar.dart';
import 'package:searchlog/views/search_view.dart';
import 'cards/accommodation.dart';
import 'cards/flights.dart';
import 'cards/news.dart';
import 'cards/shared_accommodation.dart';
import 'cards/student_accomodation.dart';
import 'cards/top_places.dart';
import 'cards/travel.dart';

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
              Container(
                height: 300,
                color: Color.fromARGB(255, 18, 32, 47),
                child: CenteredView(
                  child: Column(children: [
                    Text(
                      'Baido - Search Top Websites',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    SearchView(),
                  ]),
                ),
              ),
              Align(
                child: Container(
                  color: Color.fromARGB(255, 245, 245, 247),
                  child: CenteredView(child: TopPlaces()),
                ),
              ),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/plane.png"),
                      fit: BoxFit.cover,
                    )
                  ),
                  child: CenteredView(child: Flights()),
                ),
              ),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/news_background.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: CenteredView(child: News()),
                ),
              ),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/accomidation.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: CenteredView(child: Accommodation()),
                ),
              ),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/sharedrent.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: CenteredView(child: SharedAccommodation()),
                ),
              ),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/student_accommodation.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: CenteredView(child: StudentAccommodation()),
                ),
              ),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/tours_background.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: CenteredView(child: Travel()),
                ),
              )
            ],
          ))
        ]));
  }
}
