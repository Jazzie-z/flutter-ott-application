import 'package:flutter/material.dart';
import 'package:ott_app/contexts/detail.dart';
import 'package:provider/provider.dart';

class BillBoard extends StatelessWidget {
  const BillBoard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Consumer<Detail>(
      builder: (context, detail, child) => Container(
        height: size.height * 0.8,
        child: Stack(
          children: <Widget>[
//            Container(
//              decoration: new BoxDecoration(
//                image: new DecorationImage(
//                    fit: BoxFit.cover,
//                    alignment: FractionalOffset.topCenter,
//                    image: NetworkImage(detail.movie.images['v'])),
//              ),
//            ),
          Container(
            width: size.width,
            child: Hero(
              tag: detail.movie.title,
              child: Image.network(detail.movie.images['v'],fit: BoxFit.fill,),
            ),
          ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  stops: [0.8, 1],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.play_circle_filled,
                          color: Colors.white, size: 42),
                      label: Text('Watch Now',
                          style: TextStyle(color: Colors.white, fontSize: 18))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Play trailer: 0:31',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.grey.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
