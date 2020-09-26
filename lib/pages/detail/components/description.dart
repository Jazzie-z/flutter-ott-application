import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: <Widget>[
              Text(
                'No Time To Die',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                    text: '   |   ',
                    children: [
                      TextSpan(
                          text: 'Mystery 2h 17min',
                          style: TextStyle(color: Colors.white))
                    ]),
              ),
            ],
          ),
        ),
        ReadMoreText(
          "Recruited to rescue a kidnapped scientist, globe-trotting spy James Bond finds himself hot on the trail of a mysterious villain, who's armed with a dangerous new technology.",
          style: TextStyle(color: Colors.white.withOpacity(0.5), height: 1.5),
          trimLines: 4,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: '...Show more',
          trimExpandedText: ' show less',
        ),
      ],
    );
  }
}
