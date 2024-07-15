import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/models.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '1865f43a0549ca50d341dd9ab8b29f49';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  Map<int, List<Cast>> moviesCast = {};

  int _popularPage = 0;

  MoviesProvider() {
    print('MoviesProvider inicializado');

    this.getOnDisplayMovies();
    // this.getPopularMovies();
  }

  getOnDisplayMovies() async {
    // final jsonData = await this._getJsonData('3/discover/movie');

    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    // final Map<String, dynamic> decodeData=json.decode(response.body)  ;
    print(nowPlayingResponse.results[0].title);
    print(nowPlayingResponse.results[1].title);
    // print(decodeData);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }
}



  // getPopularMovies() async {

  //   _popularPage++;

  //   final jsonData = await this._getJsonData('3/movie/popular', _popularPage );
  //   final popularResponse = PopularResponse.fromJson( jsonData );
    
  //   popularMovies = [ ...popularMovies, ...popularResponse.results ];
  //   notifyListeners();
  // }
