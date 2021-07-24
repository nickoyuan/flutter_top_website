import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';
import '../grid_list.dart';
import '../open_container_wrapper.dart';

class GridLayout extends StatelessWidget {
  UrlHandler urlHandler = UrlHandler();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (_, index) => buildResponsiveCardHyperlink(
          choices[index].title,
          "www.google.com.au",
          "assets/abc.jpg",
          BoxFit.contain),
      itemCount: choices.length,
    );
  }

  Column buildResponsiveCardHyperlink(
      String title, String link, String img, BoxFit boxfit) {
    return Column(children: [
      ResponsiveGridCol(
        xs: 4,
        md: 1,
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              urlHandler.launchURL(link);
            },
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.centerLeft,
                  color: Colors.blue,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontFamily: "OpenSans ExtraBold",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 21
                        ),
                      ),
                    ),
                ),
                Expanded(
                  child: OpenContainerWrapper(
                    closedBuilder: (BuildContext context, void Function() action) {
                      return Container(
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage('assets/plane.png'),
                              fit: BoxFit.fill,
                            ),
                          ));
                    }, title: title,
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    ],
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
