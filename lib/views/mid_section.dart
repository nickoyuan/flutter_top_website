import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:searchlog/views/small_news_cards/covid_cards.dart';

import 'cards/news.dart';
import 'centered_view.dart';

class MidSection extends StatefulWidget {
  const MidSection({Key? key}) : super(key: key);

  @override
  _MidSectionState createState() => _MidSectionState();
}

class _MidSectionState extends State<MidSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                height: 450,
                child: Padding(
                  padding: EdgeInsets.only(left: 30, top: 30),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Australian Covid Restrictions",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w800,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 900.0,
                          color: Colors.black,
                        ),
                      ),
                      CovidCards(),
                      SizedBox(height: 50,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Covid Travel Restrictions in Australia",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w800,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 900.0,
                          color: Colors.black,
                        ),
                      ),
                      CovidCards(),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                height: 450,
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                height: 450,
                color: Colors.blue,
              ),
            ),
          ],
        )
      ],
    );
  }
}
