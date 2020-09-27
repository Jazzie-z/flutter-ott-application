import 'package:flutter/material.dart';
import 'package:ott_app/contexts/favorite.dart';
import 'package:ott_app/pages/movies/components/movie_grid.dart';
import 'package:provider/provider.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Favorite>(builder: (context, favorite, children) {
      return favorite.favList.length > 0
          ? MovieGrid(data: favorite.favList)
          : NoFavItem();
    });
  }
}

class NoFavItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(
          Icons.report_problem,
          color: Colors.white,
          size: 25,
        ),
        SizedBox(
          height: 5,
        ),
        Center(
            child: Text(
          'No Favorites Added',
          style: TextStyle(fontSize: 18),
        )),
      ],
    );
  }
}
