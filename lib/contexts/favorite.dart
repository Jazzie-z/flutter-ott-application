import 'package:flutter/material.dart';
import 'package:ott_app/models/movie.dart';

class Favorite extends ChangeNotifier {
  List<Movie> favList = [];
  void updateFav(Movie data) {
    int index = favList.indexWhere((element) => element.title == data.title);
    if (index >= 0) {
      favList.removeAt(index);
    } else {
      favList.add(data);
    }
    notifyListeners();
    print(favList.length.toString());
  }
  bool isFavItem(Movie data){
   return favList.indexWhere((element) => element.title == data.title) >=0;
  }
}
