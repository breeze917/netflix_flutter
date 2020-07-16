import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/model_movie.dart';
import 'package:flutter_app/wedget/box_slider.dart';
import 'package:flutter_app/wedget/caroucel_slider.dart';
import 'package:flutter_app/wedget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie1',
      'poster': 'image3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie2',
      'poster': 'image3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie3',
      'poster': 'image3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie4',
      'poster': 'image3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie4',
      'poster': 'image3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie4',
      'poster': 'image3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie4',
      'poster': 'image3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'testTitle',
      'keyword': 'test/movie4',
      'poster': 'image3.jpg',
      'like': false
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movie: movies),
            TopBar(),
          ],
        ),
        CircleSlider(
          movies: movies,
        ),
        BoxSlider(
          movies: movies,
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/fire.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
