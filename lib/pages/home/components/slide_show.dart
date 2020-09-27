import 'package:flutter/material.dart';
import 'package:ott_app/components/top_gradient.dart';
import 'package:ott_app/mocks/slide_show.dart';
import 'package:ott_app/pages/home/components/billboard_carousel.dart';
import 'package:ott_app/pages/home/components/billboard_indicator.dart';

class SlideShow extends StatefulWidget {
  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int _current = 0;

  void onSlideChange(index, reason) {
    setState(() {
      _current = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BillBoardCarousel(imgList: mockSlideShowData, onPress: onSlideChange),
        Positioned(
            bottom: 0,
            child: Container(
              height: 150,
              color: Colors.transparent,
              width: size.width,
              child: TopGradient(
                reverse: true,
                height: 150,
              ),
            )),
        Indicator(imgList: mockSlideShowData, current: _current),
      ],
    );
  }
}


