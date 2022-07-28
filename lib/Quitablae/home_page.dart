import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'base_url.dart';
import 'model.dart';

class QuotablePage extends StatefulWidget {
  const QuotablePage({Key? key}) : super(key: key);

  @override
  State<QuotablePage> createState() => _QuotablePageState();
}

class _QuotablePageState extends State<QuotablePage> {
  late Quitable _quotable;


  @override
  void initState() {
    super.initState();
    getCurrencyNews();
  }

  Future<Quitable> getCurrencyNews() async {
    var response = await http.get(
      Uri.parse(BaseUrl.BASE_URL),
    );
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      final details = Quitable.fromJson(data);
      setState(() {
        _quotable = details;
      });
      print(details);
      return details;
    }
    throw CircularProgressIndicator();
  }


  @override
  Widget build(BuildContext context) {

    final _with = MediaQuery.of(context).size.width;
    final _hight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff77DD77),
        title: const Text("Clever words"),
      ),
      backgroundColor: const Color(0xffFFFACD),
      body: RefreshIndicator(
        displacement: 250,
        backgroundColor: Colors.white,
        color: Colors.black,
        strokeWidth: 3,
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        onRefresh: () async {
          await Future.delayed(const Duration(microseconds: 1500));
          getCurrencyNews();
        },
        child: Column(
          children: [
            SizedBox(height: _hight*0.3,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.transparent,
                elevation: 15,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Editor: ${_quotable.author.toString()}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        const SizedBox(height: 20),
                        Text("Clever words: ${_quotable.content.toString()}",style:  const TextStyle(fontSize: 18),),
                        Text("Data Added: ${_quotable.dateAdded.toString()}",style:  const TextStyle(fontSize: 12,color: Colors.blue),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                getCurrencyNews();
              });
            }, child: const Text("Update Words"))
          ],
        ),
      ),
    );
  }
}
