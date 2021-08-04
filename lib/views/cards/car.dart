import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class Car extends StatelessWidget {
  UrlHandler urlHandler = UrlHandler();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        Row(
          children: [
            Text(
              "Online Car Sales",
              overflow: TextOverflow.visible,
              style: const TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 37, 74, 118)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: Icon(
                Icons.flight,
                color: Color.fromARGB(255, 37, 74, 118),
              ), // icon is 48px widget.
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Websites for car sales",
                  overflow: TextOverflow.visible,
                  style: const TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 37, 74, 118)),
                ),
              ),
            ),
          ],
        ),
        ResponsiveGridRow(
          children: [
            buildResponsiveCardHyperlink(
                "Car Sales",
                "Search thousands of new and used cars for sale or sell on carsales today!",
                "https://www.carsales.com.au/",
                "assets/carsales.jpeg",
                BoxFit.fitHeight
            ),
            buildResponsiveCardHyperlink(
                "Cars Guide",
                "Huge range of new & used vehicles on carsguide",
                "https://www.carsguide.com.au/",
                "assets/carsguide.jpeg",
                BoxFit.fitHeight
            ),
            buildResponsiveCardHyperlink(
                "Drive",
                "Australia's most trusted source for buying used, new and nearly-new (demo) cars. ",
                "https://www.drive.com.au/cars-for-sale/",
                "assets/drive.png",
                BoxFit.fitHeight
            ),
            buildResponsiveCardHyperlink(
                "Auto Trader",
                "Find new and used cars for sale on Autotrader.",
                "https://www.autotrader.com.au/for-sale",
                "assets/autotrader.png",
                BoxFit.fitHeight
            ),
          ],
        ),
      ]),
    );
  }

  ResponsiveGridCol buildResponsiveCardHyperlink(String title, String body, String link, String img, BoxFit boxfit) {
    return ResponsiveGridCol(
      xs: 20,
      md: 3,
      child: Container(
        height: 200,
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              urlHandler.launchURL(link);
            },
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 20, right: 10, top: 20),
              title: Text(title),
              subtitle: Text(body),
              trailing: Image.asset(
                img, fit: boxfit,
                width: 100, height: 100,
              ),
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
