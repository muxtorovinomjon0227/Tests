import 'package:flutter/cupertino.dart';
import 'package:my_cantroller/movie/base_service/api_response.dart';
import 'package:my_cantroller/movie/base_service/popular_repositores.dart';
import 'package:my_cantroller/movie/models/movie_model.dart';

class MainViewModel extends  ChangeNotifier {
  ApiResponse _apiResponse = ApiResponse.initial("initial");
  List<Movie> _movies = [];
  int counter = 0;

  List<Movie> get movies {
    return _movies;
  }

  ApiResponse get response {
    return _apiResponse;

  }

  Future fetPopular() async {
    try {
      List<Movie> movies = await PopulrRepository().fetchPopular();
      _movies = movies;
      _apiResponse = ApiResponse.completed(movies);
    } catch (e) {
      _apiResponse = ApiResponse.error(e.toString());
    }
    notifyListeners();

  }


  void incrementCounter() {
    counter++;
    notifyListeners();
  }
  void incrementCounterRemove() {
    if(counter>0){
      counter--;
    }
    notifyListeners();
  }





}