import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class GridLayout extends StatelessWidget {
  UrlHandler urlHandler = UrlHandler();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      ResponsiveGridRow(
        children: [
          buildResponsiveCardHyperlink(
              "Webjet",
              "Webjet an online travel agency in Australia and New Zealand",
              "https://www.webjet.com.au/",
              "assets/plane.png",
              BoxFit.contain),
          buildResponsiveCardHyperlink(
              "Flight Centre",
              "Flight Centre Australia is Australia's largest retailer of travel",
              "https://www.flightcentre.com.au/",
              "assets/flightcentre.png",
              BoxFit.fitWidth),
          buildResponsiveCardHyperlink(
              "Qantas",
              "Qantas Airways is the largest airline in Australia with international and domestic flights",
              "https://www.qantas.com/",
              "assets/qantas.png",
              BoxFit.fitHeight),
          buildResponsiveCardHyperlink(
              "Jetstar",
              "Jetstar Airways Pty Ltd, operating as Jetstar, is an Australian low-cost airline headquartered in Melbourne",
              "https://www.jetstar.com/",
              "assets/jetstar.png",
              BoxFit.fitHeight),
        ],
      ),
    ]);
  }

  ResponsiveGridCol buildResponsiveCardHyperlink(
      String title, String body, String link, String img, BoxFit boxfit) {
    return ResponsiveGridCol(
      xs: 20,
      md: 3,
      child: Container(
        height: 250,
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              urlHandler.launchURL(link);
            },
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.only(left: 20, right: 10, top: 20),
                  title: Text(title),
                ),
                Expanded(
                    child: new Container(
                        decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/plane.png'),
                    fit: BoxFit.cover,
                  ),
                ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UrlHandler {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
