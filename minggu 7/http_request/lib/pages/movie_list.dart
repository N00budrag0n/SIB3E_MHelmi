import 'package:flutter/material.dart';
import 'package:http_request/service/http_service.dart';
import 'package:http_request/pages/movie_detail.dart';

class MovieList extends StatefulWidget{
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList>{
  int? moviesCount;
  List? movies;
  // String result ='';
  HttpService? service;

  Future initialize() async{
    movies = [];
    movies = (await service?.getPopularMovies());
    setState(() {
      moviesCount = movies!.length;
      movies = movies;
    });
  }

  @override
  void initState(){
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    // service?.getPopularMovies().then((value) => {
    //   setState((){
    //     movies = value!;
    //   })
    // },);
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movies'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: (this.moviesCount == null) ? 0 : this.moviesCount,
        itemBuilder: (context, int position){
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: Image.network('https://image.tmdb.org/t/p/w500'+movies![position].posterPath),
              title: Text(movies![position].title),
              subtitle: Text(
                'Rating = ' + movies![position].voteAverage.toString(),
              ),
              onTap: (){
                MaterialPageRoute route = MaterialPageRoute(
                  builder:  (_) => MovieDetail(movies![position])
                  // builder: (_) => MovieDetail(movie: movies![position])
                );
                Navigator.push(context, route);
              },
            ),
          );
        },
      ),
    );
  }
}