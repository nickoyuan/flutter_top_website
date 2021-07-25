import 'package:flutter/material.dart';
import 'package:searchlog/views/home_view.dart';
import 'package:searchlog/views/tab_bar/content_view.dart';
import 'package:searchlog/views/tab_bar/custom_tab.dart';
import 'package:searchlog/views/tab_bar/custom_tab_bar.dart';

class NavigationBar extends StatelessWidget {

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: HomeView(),
    ),
    ContentView(
      tab: CustomTab(title: 'About'),
      content: HomeView(),
    ),
    ContentView(
      tab: CustomTab(title: 'Projects'),
      content: HomeView(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double  screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Color.fromARGB(255, 28, 40, 52),
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
    );
  }
}