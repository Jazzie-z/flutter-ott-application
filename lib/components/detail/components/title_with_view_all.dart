import 'package:flutter/material.dart';

class TitleWithViewAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'More Like This',
            style:
            TextStyle(color: Colors.white.withOpacity(0.7)),
          ),
          Text(
            'View All',
            style: TextStyle(color: Colors.deepOrange),
          )
        ],
      ),
    );
  }
}
