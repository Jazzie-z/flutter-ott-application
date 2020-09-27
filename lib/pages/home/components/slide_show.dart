import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ott_app/components/top_gradient.dart';
import 'package:ott_app/mocks/slide_show.dart';

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

class BillBoardCarousel extends StatelessWidget {
  const BillBoardCarousel({
    Key key,
    @required this.imgList, this.onPress,
  }) : super(key: key);

  final List<String> imgList;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: CarouselSlider.builder(
      itemCount: imgList.length,
      options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          height: size.height * 0.7,
          autoPlayInterval: Duration(seconds: 5),
          onPageChanged: onPress),
      itemBuilder: (context, index) {
        return Container(
          width: size.width,
          child: Image.asset(
            imgList[index],
            fit: BoxFit.fill,
          ),
          color: Colors.black,
        );
      },
    ));
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    Key key,
    @required this.imgList,
    @required int current,
  }) : _current = current, super(key: key);

  final List<String> imgList;
  final int _current;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map((url) {
          int index = imgList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index ? Colors.red : Colors.white30,
            ),
          );
        }).toList(),
      ),
    );
  }
}
