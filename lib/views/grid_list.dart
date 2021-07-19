

import 'package:flutter/material.dart';

class GridList {
  const GridList({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<GridList> choices = const <GridList>[
  const GridList(title: 'News', icon: Icons.home),
  const GridList(title: 'Game', icon: Icons.contacts),
  const GridList(title: 'Shopping', icon: Icons.map),
  const GridList(title: 'Manga', icon: Icons.phone),
  const GridList(title: 'Travel', icon: Icons.camera_alt),
  const GridList(title: 'Car', icon: Icons.settings),
  const GridList(title: 'Music', icon: Icons.photo_album),
  const GridList(title: 'Finance', icon: Icons.wifi),
  const GridList(title: 'Bank', icon: Icons.gps_fixed),
  const GridList(title: 'Gambling', icon: Icons.gps_fixed),
  const GridList(title: 'Job Search', icon: Icons.gps_fixed),
  const GridList(title: 'Sports', icon: Icons.gps_fixed),
  const GridList(title: 'Social', icon: Icons.gps_fixed),
  const GridList(title: 'Student Accommodation', icon: Icons.gps_fixed),
  const GridList(title: 'Shared Accommodation', icon: Icons.gps_fixed)
];
