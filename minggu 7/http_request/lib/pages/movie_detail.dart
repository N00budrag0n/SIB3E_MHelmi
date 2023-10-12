import 'package:flutter/material.dart';
import 'package:http_request/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  
  MovieDetail({required this.movie});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Text(movie.overview),
      ),
    );
  }
}