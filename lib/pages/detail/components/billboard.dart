import 'package:flutter/material.dart';

class BillBoard extends StatelessWidget {
  const BillBoard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.7,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.fitWidth,
                  alignment: FractionalOffset.topCenter,
                  image: AssetImage('assets/images/movie-1.jpg')),
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
    );
  }
}
