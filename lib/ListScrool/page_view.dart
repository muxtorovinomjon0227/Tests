import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {


   int _focusedIndex = 3;

  List<int> data = [
    10,9,8,7,6,5,4,3,2,1,1,2,3,4,5,7,8,8,9,0,0,8,8,7,6,6,5,4,4,3,2,2,2,3,4,4,5,6,6,6,6,5,4,3,3,3,4,4,5,5,6,6,7,8,8,7,6,6,5,5,5,5,5,5,5,5,5,
  ];

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal list',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text(_focusedIndex.toString()),
            Expanded(
                child: ScrollSnapList(
                  updateOnScroll: true,
                  onItemFocus: _onItemFocus,
                itemBuilder: _buildItemList,
                  itemSize: 150,
                  // dynamicItemSize: true,
                  onReachEnd: (){
                    print(data.toString());
                  },
                  itemCount: data.length  ,
                )
            ),
          ],
        ),
      ),
    );
  }
}













