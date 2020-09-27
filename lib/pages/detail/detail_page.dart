import 'package:flutter/material.dart';
import 'package:ott_app/components/top_gradient.dart';
import 'package:ott_app/contexts/detail.dart';
import 'package:ott_app/contexts/favorite.dart';
import 'package:ott_app/pages/detail/components/detail_container.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: detailAppBar(context),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(children: [DetailContainer(size: size), TopGradient()]),
    );
  }

  AppBar detailAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.chevron_left,
          size: 32,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
        Consumer2<Detail, Favorite>(
          builder: (context, detail, favourite, child) => Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                favourite.updateFav(detail.movie);
              },
              icon: Icon(
                favourite.isFavItem(detail.movie)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: favourite.isFavItem(detail.movie)
                    ? Colors.deepOrange
                    : Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
