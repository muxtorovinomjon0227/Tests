import 'dart:convert';
import 'dart:io';
import 'package:my_cantroller/movie/app_exeption.dart';
import 'package:my_cantroller/movie/base_service/service.dart';
import 'package:http/http.dart' as http;


class PopuliarService extends BaseService{
  dynamic responseJson;

  @override
  Future getResponse(String url) async {
    try{
      final response = await  http.get(Uri.parse(API_HOST+url+API_KEY));
   responseJson = returnResponse(response);
    } on SocketException {
      throw Exception("Internet Error");
    }
     return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.statusCode.toString());
      case 401:
        throw UnatException((response.statusCode.toString()));
      case 404:
        throw NotFoundException(response.statusCode.toString());
      default:
        throw Exception(response.statusCode.toString());
    }
  }
}