import 'package:flutter/material.dart';
import 'package:http_request/models/movie.dart';

// class MovieDetail extends StatelessWidget {
//   final Movie movie;
  
//   MovieDetail({required this.movie});

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(movie.title),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Text(movie.overview),
//       ),
//     );
//   }
// }

class MovieDetail extends StatelessWidget{
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500';

  MovieDetail(this.movie);

  Widget build(BuildContext context){
    String path;
    if (movie.posterPath != null){
      path = imgPath + movie.posterPath;
    } else {
      path = 'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        foregroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height/1.5,
                child: Image.network(path),
              ),
              Container(
                child: Text(movie.overview),
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}