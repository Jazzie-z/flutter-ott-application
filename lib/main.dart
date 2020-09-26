import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ott_app/pages/detail/detail_page.dart';
import 'package:ott_app/pages/movies/movies_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: AnnotatedRegion(
            value: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.light),
            child: MainApp()));
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: MoviesPage(),
      extendBody: true,
      bottomNavigationBar: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
    _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.redAccent,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.black.withOpacity(0.5),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.black.withOpacity(0.5)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            title: Text('Live Tv')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text('CatchUp')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('My List')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings')
        ),
      ],
    );
  }
}
