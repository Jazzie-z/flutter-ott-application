class Movie {
  String title, description, entityType;
  int duration, startDate, endDate, year;
  dynamic images;
  List<String> genre;
  Movie({this.title,this.description,this.entityType,this.duration,this.startDate,this.endDate,this.images, this.year, this.genre});
}

class MovieList {
  String title;
  List<Movie>items;
  MovieList({this.title,this.items});
}

MovieList mockMovies = new MovieList(
    title: "Best of Superheroes ",
    items: [
      new Movie(
        title: "Black Panther",
        description: "T'Challa, heir to the hidden kingdom of Wakanda, must lead his people into a new future and confront a challenger from his country's past.",
        duration: 8080,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2018,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4422/674422-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4416/674416-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Avengers: Endgame",
        description: "After the devastating events of the Infinity War, the Avengers assemble once more to reverse Thanos’ actions and restore balance to the universe.",
        duration: 10476,
        entityType: "MOVIE",
        startDate: 1573583400,
        endDate: 1617388140,
        year: 2019,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4474/674474-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4469/674469-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Captain Marvel",
        description: "Carol Danvers becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.",
        duration: 7459,
        entityType: "MOVIE",
        startDate: 1578594660,
        endDate: 1617388140,
        year: 2019,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4663/674663-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4661/674661-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Avengers: Infinity War",
        description: "With the powerful Thanos on the verge of raining destruction upon the universe, the Avengers will have to risk everything to stop him.",
        duration: 8627,
        entityType: "MOVIE",
        startDate: 1553367600,
        endDate: 1617388140,
        year: 2018,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4655/674655-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4652/674652-h",
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Captain America: Civil War",
        description: "The government's decision to push a Hero Registration Act to regulate heroes creates a rift among the Avengers and other heroes.",
        duration: 8494,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2016,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4463/674463-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4458/674458-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Thor: Ragnarok",
        description: "Deprived of his mighty hammer Mjolnir, Thor must escape the other side of the universe to save his home, Asgard, from Hela, the goddess of death.",
        duration: 7857,
        entityType: "MOVIE",
        startDate: 1580841060,
        endDate: 1617388140,
        year: 2017,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4580/674580-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4576/674576-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Iron Man 3",
        description: "Tony Stark encounters a formidable foe called the Mandarin, and after failing to him, he embarks on a journey with relentless consequences.",
        duration: 7828,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2013,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4390/674390-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4385/674385-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Ant-Man",
        description: "Cat burglar Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.",
        duration: 6735,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2015,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4483/674483-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4480/674480-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Captain America: The First Avenger",
        description: "After being injected with a special \"Super-Soldier\" serum which leads to him developing superpowers Steve must thwart the plans of a warmonger.",
        duration: 7379,
        entityType: "MOVIE",
        startDate: 1540148400,
        endDate: 1617388140,
        year: 2011,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4583/674583-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4581/674581-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Ant-Man And The Wasp",
        description: "Accompanied by Hope van Dyne and Dr. Hank Pym, Scott Lang must once again don the Ant-Man suit and fight alongside the Wasp.",
        duration: 7152,
        entityType: "MOVIE",
        startDate: 1562266800,
        endDate: 1617388140,
        year: 2018,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4672/674672-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4667/674667-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Doctor Strange",
        description: "Dr. Strange faces a difficult choice of whether to return to his life of luxury or to protect the world as the most powerful sorcerer in existence.",
        duration: 6895,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2016,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4622/674622-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4619/674619-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Iron Man",
        description: "An industrialist constructs a high-tech armoured and decides to use his suit to fight against evil forces and save the world.",
        duration: 7556,
        entityType: "MOVIE",
        startDate: 1540148400,
        endDate: 1617388140,
        year: 2008,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4432/674432-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4427/674427-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Guardians Of The Galaxy Vol. 2",
        description: "The Sovereign attacks the Guardians when Rocket steals the batteries. Peter's father rescues the Guardians, and they set out to discover Peter's true parentage.",
        duration: 8142,
        entityType: "MOVIE",
        startDate: 1588617000,
        endDate: 1617388140,
        year: 2017,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4631/674631-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4629/674629-h"
        },
        genre: [
          "Action"

        ],
      ),

      new Movie(
        title: "Thor: The Dark World",
        description: "Thor sets out on a journey to defeat Malekith, the leader of the Dark Elves when he returns to Asgard to fulfil his desire of destroying the Nine Realms.",
        duration: 6444,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2013,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4511/674511-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4507/674507-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Captain America: The Winter Soldier",
        description: "Steve Rogers teams up with Natasha Romanoff, aka Black Widow, to battle a powerful yet shadowy enemy in present-day Washington, D.C.",
        duration: 7818,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2014,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4528/674528-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4524/674524-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Iron Man 2",
        description: "Tony Stark is under pressure from various sources, to share his technology with the world. And, he needs to find a way to deal with his enemies.",
        duration: 7471,
        entityType: "MOVIE",
        startDate: 1540148400,
        endDate: 1617388140,
        year: 2010,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4571/674571-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4570/674570-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Avengers: Age Of Ultron",
        description: "Tony Stark builds an AI system named Ultron, and when things go wrong, it's up to Earth's mightiest heroes to stop the villain from enacting his terrible plan.",
        duration: 8128,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2015,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4679/674679-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4675/674675-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Thor",
        description: "The powerful, but arrogant god Thor, is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.",
        duration: 6885,
        entityType: "MOVIE",
        startDate: 1540148400,
        endDate: 1617388140,
        year: 2011,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4598/674598-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4595/674595-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Marvel's The Avengers",
        description: "Nick Fury finds himself in need of a team to pull the world back from the brink of disaster by launching the Avengers initiative.",
        duration: 8220,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2012,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4413/674413-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4409/674409-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),

      new Movie(
        title: "Guardians Of The Galaxy",
        description: "A stranded jet pilot in space must unite a diverse team of aliens to form a squad capable of defeating cosmic threats.",
        duration: 6963,
        entityType: "MOVIE",
        startDate: 1585848600,
        endDate: 1617388140,
        year: 2014,
        images: {
          "v": "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/4411/674411-v",
          "h": "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1_5x/sources/r1/cms/prod/4406/674406-h"
        },
        genre: [
          "Superhero",
          "Action"
        ],
      ),
    ]
);