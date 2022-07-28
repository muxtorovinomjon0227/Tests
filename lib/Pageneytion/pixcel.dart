import 'package:flutter/material.dart';

import 'home_2.dart';


class MyPixcelPage extends StatefulWidget {
  const MyPixcelPage({Key? key}) : super(key: key);

  @override
  _MyPixcelPageState createState() => _MyPixcelPageState();
}

class _MyPixcelPageState extends State<MyPixcelPage> {
  ScrollController _scrollController = new ScrollController();
  bool backtoTop = false;
  bool isLastIndex = false;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        backtoTop = _scrollController.offset > 400 ? true : false;
        isLastIndex = _scrollController.offset >
            _scrollController.position.maxScrollExtent ? true : false;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollController Demo"),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          itemCount: 50,
          itemBuilder: (context, index) {
            return Container(
              width: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.5),
                    color: Colors.green[100],
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Index $index"),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
            Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(text: 'Our application already has'),
                  WidgetSpan(
                    // alignment: ui.PlaceholderAlignment.bottom,
                      child: Icon(Icons.ten_k, color: Colors.red, size: 60,)),
                  TextSpan(text: 'downloads on both stores'),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40
              ),
            ),
            backtoTop
           ? Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    _scrollController.animateTo(0,
                        duration: Duration(seconds: 1), curve: Curves.linear);
                  },
                  label: Text("Back to Top"),
                ),
              ),
            )
            : SizedBox(),
        isLastIndex
            ? Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "All caught up 🎉 ",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20.00),
          ),
        )
            : SizedBox(),
          ],
        ),
      ),
    );
  }
}