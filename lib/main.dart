import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              BillBoard(size: size),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
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
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
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
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5), height: 1.5),
                      trimLines: 4,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '...Show more',
                      trimExpandedText: ' show less',
                    ),
                    Padding(
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
                    ),
//                    sc(
//                      child: Row(
//                          children:imgList.map((e) => Image.network(e,width: 120,)).toList(),
//                      ),
//                    ),
                    Container(
                        width: size.width,
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:
                              imgList.map((e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:5.0),
                                    child: Container(
                                      height: 120,
                                      width: 220,
                                      child: Image.network(e['image'],fit: BoxFit.fill,),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(e['title'],style: TextStyle(color: Colors.white,fontSize: 18),),
                                  Text(e['desc'],style: TextStyle(color: Colors.grey),)
                                ],
                              )).toList(),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final List imgList = [
  {
    "title": 'Avengers',
    "desc": 'Action: 3h 10m',
    "image":
        'https://img.cinemablend.com/filter:scale/quill/0/4/e/a/3/2/04ea32c2f31065db125758c973a5ff44adb45ff3.jpg?fw=1200'
  },
  {
    "title": "Interstellar",
    "desc": 'Sci-Fi: 2h 55m',
    "image":
        'https://www.joblo.com/assets/images/oldsite/posters/images/full/interstellar-banner.jpg'
  },
  {
    "title": "Oblivion",
    "desc": "Sci-Fi: 1h 58m",
    "image":
        'https://d2kektcjb0ajja.cloudfront.net/images/posts/feature_images/000/000/072/large-1466557422-feature.jpg?1466557422'
  },
  {
    "title": "Dark Knight Rises",
    "desc": "Action: 2h 50m",
    "image":
        'https://cdn.thearthunters.com/wp-content/uploads/old/201205272/4.jpg'
  },
  {
    "title": "Joker",
    "desc": "Crime",
    "image":
        'https://cultbox.co.uk/wp-content/uploads/2019/10/joker-1-e1560453470384-600x250.jpg'
  },
];

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
