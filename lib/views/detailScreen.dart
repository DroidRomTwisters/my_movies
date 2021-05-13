import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final int id;
  MovieDetail(this.id);
  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  Movie movie;
  var movieDetailRepo=MovieDetailRepository();
  @override
  void initState(){
    movie=movieDetailRepo.fetchMovieDetails(widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(movie.name),
      ),
    );
  }
}
