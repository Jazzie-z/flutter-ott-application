import 'package:flutter/material.dart';
import 'package:ott_app/components/top_gradient.dart';
import 'package:ott_app/mocks/hit_movies.dart';
import 'package:ott_app/mocks/trending.dart';
import 'package:ott_app/pages/home/components/carousel_with_title.dart';
import 'package:ott_app/pages/home/components/slide_show.dart';

class HomePage extends StatelessWidget {
//  mockTvShows
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Home'),
          centerTitle: true,
          elevation: 0,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        extendBodyBehindAppBar: true,
        drawer: Drawer(
          child: Container(
            width: 40,
            color: Colors.red,
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SlideShow(),
                  CarouselWithTitle(
                    data: mockTrending,
                  ),
                  CarouselWithTitle(
                    data: mockHitMovies,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            TopGradient(),
          ],
        ));
  }
}
