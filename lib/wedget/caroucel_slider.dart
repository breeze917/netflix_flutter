import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/model/model_movie.dart';

class CarouselImage extends StatefulWidget{
  final List<Movie> movie;
  CarouselImage({this.movie});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  List<Movie> movies;
  List<Widget> images;
  List<String> keyword;
  List<bool> likes;
  int _currenPage = 0;
  String _currentKeyword;

  @override
  void initState() {
    super.initState();
    this.movies = widget.movie;
    this.images = this.movies.map((e) => Image.asset('./images/' +
    e.poster)).toList();
    this.keyword = this.movies.map((e) => e.keyword).toList();
    this.likes = this.movies.map((e) => e.like).toList();

    _currentKeyword = this.keyword[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider
        ],
      ),
    );
  }
}