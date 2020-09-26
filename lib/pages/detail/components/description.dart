import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott_app/contexts/detail.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Detail>(
      builder: (context, detail, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  '${detail.movie.title}',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Container(
                  child: Text(detail.movie.genre[0], style: TextStyle(color: Colors.white.withOpacity(0.8)),),
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.white.withOpacity(0.8),
                    )
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(detail.durationFormat(detail.movie.duration), style: TextStyle(color: Colors.redAccent),),
            padding: EdgeInsets.only(bottom: 5),
          ),
          ReadMoreText(
            "${detail.movie.description}",
            style: TextStyle(color: Colors.white.withOpacity(0.5), height: 1.5),
            trimLines: 4,
            textAlign: TextAlign.left,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: '...Show more',
            trimExpandedText: ' show less',
          ),
        ],
      ),
    );
  }
}
