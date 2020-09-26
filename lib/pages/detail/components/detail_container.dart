import 'package:flutter/material.dart';
import 'package:ott_app/pages/detail/components/billboard.dart';
import 'package:ott_app/pages/detail/components/carousel.dart';
import 'package:ott_app/pages/detail/components/description.dart';
import 'package:ott_app/pages/detail/components/title_with_view_all.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          BillBoard(size: size),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: <Widget>[
                Description(),
                TitleWithViewAll(),
                Carousel()
              ],
            ),
          )
        ],
      ),
    );
  }
}



