import 'package:flutter/material.dart';
import 'package:searchlog/views/tab_bar/content_view.dart';
import 'package:searchlog/views/tab_bar/custom_tab.dart';
import 'package:searchlog/views/tab_bar/custom_tab_bar.dart';

import 'home_view.dart';

class NavigationTabBarView extends StatefulWidget {
  const NavigationTabBarView({Key? key}) : super(key: key);

  @override
  _NavigationTabBarState createState() => _NavigationTabBarState();
}

class _NavigationTabBarState extends State<NavigationTabBarView>
with SingleTickerProviderStateMixin{

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: HomeView(),
    ),
    // ContentView(
    //   tab: CustomTab(title: 'About'),
    //   content: HomeView(),
    // ),
    // ContentView(
    //   tab: CustomTab(title: 'Support Us'),
    //   content: HomeView(),
    // )
  ];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double  screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          Text(
            "Top Websites",
            overflow: TextOverflow.visible,
            style: const TextStyle(
                fontSize: 25, color: Colors.white
            ),
          ),
          Text(
            "Click and Find",
            overflow: TextOverflow.visible,
            style: const TextStyle(
                fontFamily: "Satisfy",
                color: Colors.white,
                fontSize: 25
            ),
          )
        ],),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: screenHeight * 0.05,
                child: CustomTabBar(
                    controller: tabController,
                    tabs: contentViews.map((e) => e.tab).toList()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
