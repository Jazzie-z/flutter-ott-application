import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ott_app/components/top_gradient.dart';
import 'package:ott_app/models/movie.dart';
import 'package:ott_app/pages/detail/components/detail_container.dart';
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final Movie data = ModalRoute.of(context).settings.arguments;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: detailAppBar(context),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(children: [
        DetailContainer(size: size),
        TopGradient()
      ]),
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
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            onPressed: () {
              setState(() {
                isFav = !isFav;
              });
            },
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ?Colors.deepOrange: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

