abstract class BaseService{
  final String API_KEY = "?api_key=30fb12640bc95f8270476cac8f158077";
  final String   API_HOST = "https://api.themoviedb.org/3/movie/popular?";
  Future<dynamic> getResponse();

}