import 'package:flutter/material.dart';

class TopGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
          stops: [0, 1],
        ),
      ),
    );
  }
}
