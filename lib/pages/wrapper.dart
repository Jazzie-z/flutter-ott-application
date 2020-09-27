import 'package:flutter/material.dart';
import 'package:ott_app/components/bottom_nav.dart';
import 'package:ott_app/pages/favorites/favorites_page.dart';
import 'package:ott_app/pages/home/home_page.dart';
import 'package:ott_app/pages/live/live_page.dart';
import 'package:ott_app/pages/movies/movies_page.dart';
import 'package:ott_app/pages/settings/settings_page.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int selectedIndex = 0;

  List navItems = [
    {"icon": Icons.home, "title": 'Home', "component": HomePage()},
    {"icon": Icons.live_tv, "title": 'Live Tv', "component": LivePage()},
    {
      "icon": Icons.video_library,
      "title": 'CatchUp',
      "component": MoviesPage()
    },
    {"icon": Icons.favorite, "title": 'My List', "component": FavouritesPage()},
    {"icon": Icons.settings, "title": 'Settings', "component": SettingsPage()},
  ];

  void bottomNavHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: navItems[selectedIndex]['component'],
      extendBody: true,
      bottomNavigationBar: BottomNav(
          selectedIndex: selectedIndex,
          onPress: bottomNavHandler,
          navItems: navItems),
    );
  }
}
