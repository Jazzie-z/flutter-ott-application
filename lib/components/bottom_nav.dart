import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function onPress;
  final List navItems;
  const BottomNav({Key key, this.selectedIndex, this.onPress, this.navItems})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Colors.redAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black.withOpacity(0.5),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onPress,
        items: navItems.map(
          (e) => BottomNavigationBarItem(
              icon: Icon(e['icon']),
              title: Text(e['title']),
              backgroundColor: Colors.black.withOpacity(0.5)),
        ).toList());
  }
}
