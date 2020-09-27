import 'package:flutter/material.dart';
import 'package:ott_app/models/movie.dart';

class Detail extends ChangeNotifier {
  Movie movie = new Movie(description: 'blah');

  String durationFormat(duration){
    double value = 10476/60;
    int hours = (value/60).floor();
    int minutes = (value%60).ceil();
    return "${hours}h ${minutes}min";
  }
  void updateMovieDetail(data) {
    print(data.genre[0]);
    movie = new Movie(
        title: data.title, description: data.description, image: data.image, genre: data.genre, duration:data.duration);
    notifyListeners();
  }
}
