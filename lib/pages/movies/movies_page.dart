import 'package:flutter/material.dart';
import 'package:ott_app/components/top_gradient.dart';
import 'package:ott_app/pages/movies/components/movie_grid.dart';

class MoviesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: movieTabBar(),
        body: Stack(children: [
          MovieGrid(),
          TopGradient()
        ]),
      ),
    );
  }

  PreferredSize movieTabBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: TabBar(
            onTap: (val) {},
            labelColor: Colors.redAccent,
            indicatorColor: Colors.redAccent,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                text: 'Tv Shows',
              ),
              Tab(text: 'Movies'),
              Tab(text: 'Sports'),
              Tab(text: 'Kids'),
            ],
          ),
        ),
      );
  }
}
