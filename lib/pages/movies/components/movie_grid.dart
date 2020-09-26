import 'package:flutter/material.dart';
import 'package:ott_app/contexts/detail.dart';
import 'package:ott_app/models/movie.dart';
import 'package:provider/provider.dart';

class MovieGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: 0.8,
        children: mockMovies.items
            .map((item) => GestureDetector(
                  onTap: () {
                    print('tapped' + item.genre[0]);
                    Provider.of<Detail>(context,listen:false).updateMovieDetail(item);
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: Container(
                      child: Hero(
                        tag: item.title,
                        child: Image.network(
                    item.images['v'],
                    fit: BoxFit.fill,
                  ),
                      )),
                ))
            .toList());
  }
}
