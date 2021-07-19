import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';
import '../grid_list.dart';

class GridLayout extends StatelessWidget {
  UrlHandler urlHandler = UrlHandler();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (_, index) => buildResponsiveCardHyperlink(
          choices[index].title,
          "www.google.com.au",
          "assets/abc.jpg",
          BoxFit.contain),
      itemCount: choices.length,
    );
  }

  ResponsiveGridCol buildResponsiveCardHyperlink(
      String title, String link, String img, BoxFit boxfit) {
    return ResponsiveGridCol(
      xs: 6,
      md: 3,
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
                contentPadding: EdgeInsets.only(left: 20, right: 10),
                title: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
              Container(
                  decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/plane.png'),
                  fit: BoxFit.fill,
                ),
              )),
            ],
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
