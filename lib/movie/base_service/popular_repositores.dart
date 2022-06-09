import 'package:my_cantroller/movie/base_service/populiar_service.dart';
import 'package:my_cantroller/movie/base_service/service.dart';
import 'package:my_cantroller/movie/models/movie_model.dart';

class PopulrRepository{
  final BaseService _popularService = PopuliarService();
  Future<List<Movie>> fetchPopular() async{
    dynamic response = await _popularService.getResponse("/popular");
    final data = response["results"] as List;
    print("bu yerda data $data");

     List<Movie>movies = data.map((e) => Movie.fromJson(e)).toList();
     print("bu yerda movies $movies");
     return movies;
  }
}