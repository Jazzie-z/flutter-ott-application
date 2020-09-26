import 'package:flutter/material.dart';
import 'package:ott_app/models/more_like_this.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: moreLikeThis
              .map((e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          height: 120,
                          width: 220,
                          child: Image.network(
                            e.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        e.title,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        e.desc,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ))
              .toList(),
        ));
  }
}
