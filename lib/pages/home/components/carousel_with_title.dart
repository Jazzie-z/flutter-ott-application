import 'package:flutter/material.dart';
import 'package:ott_app/contexts/detail.dart';
import 'package:ott_app/models/movie.dart';
import 'package:provider/provider.dart';

class CarouselWithTitle extends StatelessWidget {
  final MovieList data;

  const CarouselWithTitle({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '${data.title}',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: data.items
                  .map((item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Provider.of<Detail>(context, listen: false)
                                .updateMovieDetail(item);
                            Navigator.pushNamed(context, '/detail');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              item.image,
                              width: 160,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          SizedBox(height: 8),
        ]);
  }
}
