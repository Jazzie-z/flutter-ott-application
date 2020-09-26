import 'package:flutter/material.dart';
import 'package:ott_app/models/movie.dart';

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
                    print('tapped' + item.title);
                  },
                  child: Container(
                      child: Image.network(
                        item.images['v'],
                        fit: BoxFit.fill,
                      )),
                ))
            .toList());
  }
}
