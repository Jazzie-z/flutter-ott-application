import 'package:flutter/material.dart';
import 'package:ott_app/components/top_gradient.dart';
import 'package:ott_app/mocks/movies.dart';
import 'package:ott_app/mocks/tv_shows.dart';
import 'package:ott_app/pages/movies/components/movie_grid.dart';

final sections = [
  {"title": "Tv Shows", "data": mockTvShows},
  {"title": "Movies", "data": mockMovies},
  {"title": "Sports", "data": mockTvShows},
  {"title": "Kids", "data": mockTvShows},
];

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
          TabBarView(
            children: [
              MovieGrid(data: mockTvShows.items),
              MovieGrid(data: mockMovies.items),
              MovieGrid(data: mockTvShows.items),
              MovieGrid(data: mockTvShows.items),
            ],
          ),
          TopGradient()
        ]),
      ),
    );
  }

  PreferredSize movieTabBar({onPress}) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: TabBar(
          onTap: (val) {},
          labelColor: Colors.redAccent,
          indicatorColor: Colors.redAccent,
          unselectedLabelColor: Colors.white,
          tabs: sections.map((e) => Tab(text: e['title'])).toList(),
        ),
      ),
    );
  }
}
