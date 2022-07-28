import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_cantroller/movie/models/movie_model.dart';


class KinolarPage extends StatefulWidget {
  const KinolarPage({Key? key}) : super(key: key);

  @override
  State<KinolarPage> createState() => _KinolarPageState();
}
class _KinolarPageState extends State<KinolarPage> {

  final List<Movies> _myMovies = [];

  @override
  void initState() {
    super.initState();
    getResponse();
  }

 void  getResponse() async {
    var url = Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=30fb12640bc95f8270476cac8f158077');
    http.Response response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        String data = response.body;
        var decodedData = jsonDecode(data);


        print(decodedData['results']);
        return decodedData;
      } else {
        return  ;
      }
    } catch (e) {
      return ;
    }
  }


  void index(){
    int i;
    for(i=0;  i<20;  i++){

    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
            ),
              child: const Center(child: Text("_myMovies.",style: TextStyle(fontSize: 25,color: Colors.orange),))),
        );
      }),
    );
  }
}
