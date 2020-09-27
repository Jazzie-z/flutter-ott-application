class Movie {
  String title, description, entityType, image;
  int duration, startDate, endDate, year;
  List<String> genre;

  Movie(
      {this.title,
      this.description,
      this.entityType,
      this.duration,
      this.startDate,
      this.endDate,
      this.image,
      this.year,
      this.genre});
}

class MovieList {
  String title;
  List<Movie> items;

  MovieList({this.title, this.items});
}