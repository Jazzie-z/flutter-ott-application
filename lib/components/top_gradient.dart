import 'package:flutter/material.dart';

class TopGradient extends StatelessWidget {
  final bool reverse;
  final double height;

  const TopGradient({Key key, this.reverse = false, this.height = 100.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: reverse
              ? [
                  Colors.transparent,
                  Colors.black,
                ]
              : [
                  Colors.black,
                  Colors.transparent,
                ],
          stops: [0, 1],
        ),
      ),
    );
  }
}
