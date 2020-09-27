import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BillBoardCarousel extends StatelessWidget {
  const BillBoardCarousel({
    Key key,
    @required this.imgList,
    this.onPress,
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
          child: Container(
            width: size.width,
            child: Image.asset(
              imgList[index],
              fit: BoxFit.fill,
            ),
          ),
          color: Colors.black,
        );
      },
    ));
  }
}
