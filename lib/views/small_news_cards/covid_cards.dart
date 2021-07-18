import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class CovidCards extends StatelessWidget {
  UrlHandler urlHandler = UrlHandler();

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
      ResponsiveGridRow(
        children: [
          buildResponsiveCardHyperlink(
              "https://www.abc.net.au/",
              "assets/abc.jpg",
              BoxFit.contain),
          buildResponsiveCardHyperlink(
              "https://www.9news.com.au/",
              "assets/nine_news.jpg",
              BoxFit.contain),
          buildResponsiveCardHyperlink(
              "https://www.sbs.com.au/",
              "assets/sbs.png",
              BoxFit.contain),
          buildResponsiveCardHyperlink(
              "https://www.skynews.com.au/",
              "assets/sky.png",
              BoxFit.contain),
        ],
      ),
    ]);
  }

  ResponsiveGridCol buildResponsiveCardHyperlink(String link, String img, BoxFit boxfit) {
    return ResponsiveGridCol(
      xs: 10,
      md: 3,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 10, top: 10),
        height: 100,
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              urlHandler.launchURL(link);
            },
            child: Image.asset(
              img,
              fit: boxfit
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
