import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'news_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<CurrencyNews> list = [];
  final bool _isReference=true;



  @override
  void initState() {
    super.initState();
    getCurrencyNews();
  }
  Future<List<CurrencyNews>> getCurrencyNews() async{
    var response = await http.get(Uri.parse("https://nbu.uz/uz/exchange-rates/json/"),);
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      (data as List).forEach((element) {
        list.add(CurrencyNews.fromJson(element));
        print(list[0].title);
      });

      return list;
    }

    throw UnimplementedError();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
       body: Dialog(
          elevation: 0,
          backgroundColor: Color(0xffffffff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child:  Container(
             width: double.infinity,
             height:180,
             decoration: BoxDecoration(
               color: Colors.black12,
               borderRadius: BorderRadius.circular(10),
          ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Doctorni tanlang"),
                      IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.cancel,color: Color(0xff25D3C2)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index ){
                    return Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          width: 300,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 4),
                              ClipOval(

                                child: Image.asset("assets/img.png",height: 100,width: 100,)
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4,bottom: 10,top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Abdullayev Abdusamat\nAhmatovich",style: TextStyle(fontSize: 11),),
                                    Text("Erkak",style: TextStyle(fontSize: 11),),
                                    Text("1 min - 5000 so'm",style: TextStyle(fontSize: 11),),
                                    Text("Terapevt",style: TextStyle(fontSize: 11),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    buildReferece(),
                                    Icon(Icons.star,color: Colors.amber,size: 20,),
                                    // Text("Tajtiba: 12",style:  TextStyle(fontSize: 12),)
                                    // Text(list[index].title.toString()??"---",style:  TextStyle(fontSize: 8),)

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
        ),
      ),
    );
  }
  Widget buildReferece(){
    return Column(
      children: [
        if(_isReference==true)
          Container(
            width: 45,
            height: 13,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            child: const Center(child: Text("online",style: TextStyle(fontSize: 9),)),
          ),
        if(_isReference==false)
          Container(
            width: 45,
            height: 13,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.amber,
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            child: const Center(child: Text("online",style: TextStyle(fontSize: 9),)),
          ),

      ],
    );
  }

}
