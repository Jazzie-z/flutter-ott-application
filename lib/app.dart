import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ott_app/pages/detail/detail_page.dart';
import 'package:ott_app/pages/wrapper.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTT App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Wrapper(),
        "/detail": (context) => DetailPage()
      },
    );
  }
}
