import 'package:flutter/material.dart';
import 'package:ott_app/contexts/detail.dart';
import 'package:provider/provider.dart';

class MovieGrid extends StatelessWidget {
  final data;
  MovieGrid({this.data});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: 0.8,
        children: data
            .map<Widget>((item) =>
            GestureDetector(
              onTap: () {
                Provider.of<Detail>(context, listen: false).updateMovieDetail(
                    item);
                Navigator.pushNamed(context, '/detail');
              },
              child: Container(
                  child: Hero(
                    tag: item.title,
                    child: Image.network(
                      item.image,
                      fit: BoxFit.fill,
                    ),
                  )),
            ))
            .toList());
  }
}
