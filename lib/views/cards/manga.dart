import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class Manga extends StatelessWidget {
  UrlHandler urlHandler = UrlHandler();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        Row(
          children: [
            Text(
              "Online Manga",
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
                  "Websites for free online manga",
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
                "Crunchy Roll",
                "Read your favorite Japanese manga online on Crunchyroll",
                "https://www.crunchyroll.com/comics/manga",
                "assets/crunchyroll.png",
                BoxFit.fitHeight
            ),
            buildResponsiveCardHyperlink(
                "Manganato",
                "Read manga online free at MangaNato",
                "https://manganato.com//",
                "assets/manganato.png",
                BoxFit.fitHeight
            ),
            buildResponsiveCardHyperlink(
                "MangaOwl",
                "Read english manga online free with a huge collections at Manga Owl",
                "https://mangaowl.net/",
                "assets/mangaowl.jpeg",
                BoxFit.fitHeight
            ),
            buildResponsiveCardHyperlink(
                "Mangakakalot",
                "Read manga online free at Mangakakalot",
                "https://mangakakalot.com/",
                "assets/mangakakalot.jpeg",
                BoxFit.fitHeight
            )
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