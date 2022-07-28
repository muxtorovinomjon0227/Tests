import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class HorizontalListDemo extends StatefulWidget {
  @override
  _HorizontalListDemoState createState() => _HorizontalListDemoState();
}

class _HorizontalListDemoState extends State<HorizontalListDemo> {
  List<String> data = [
    "sa", "da", "ma", "klnj","bvjh", "jhb","jbjb"
  ];
  int _focusedIndex = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 30; i++) {
      data.add(" ");
    }
  }



  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildItemDetail() {
    if (data.length > _focusedIndex) {
      return Container(
        height: 150,
        child: Text("index $_focusedIndex: ${data[_focusedIndex]}"),
      );
    }
    return Container(
      height: 150,
      child: const Text("No Data"),
    );
  }

  Widget _buildItemList(BuildContext context, int index){
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            width: 150,
            height: 200,
            child: Center(
              child: Text('${data[index]}',style: TextStyle(fontSize: 50.0,color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GeeksForGeeks"),
          backgroundColor: Colors.green,
        ),
        body:  Column(
          children: <Widget>[
            Expanded(
              child: ScrollSnapList(
                // dynamicItemSize: true,
                onItemFocus: _onItemFocus,
                itemSize: 150,
                itemBuilder: _buildItemList,
                itemCount: data.length,
                reverse: true,
              ),
            ),
            _buildItemDetail(),
            const Text("hello")
          ],
        ),
      ),
    );
  }
}


