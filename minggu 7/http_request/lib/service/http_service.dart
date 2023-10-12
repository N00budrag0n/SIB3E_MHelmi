import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_request/models/movie.dart';

class HttpService {
  final String apiKey = 'acfaa3126ecb96212bcbecea5f3b9020';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';

  Future<List?> getPopularMovies() async{
    final String uri =  baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if(result.statusCode == HttpStatus.ok){
      print('Sukses');
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap != null ? moviesMap.map((i) => Movie.fromJson(i)).toList() : [] ;
      // String response = result.body;
      return movies;
    } else {
      print('Fail');
      return null;
    }
  }
}