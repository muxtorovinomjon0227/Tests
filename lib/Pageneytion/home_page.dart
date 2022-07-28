import 'package:flutter/material.dart';

class PageNeytion extends StatefulWidget {
  const PageNeytion({Key? key}) : super(key: key);

  @override
  State<PageNeytion> createState() => _PageNeytionState();
}

class _PageNeytionState extends State<PageNeytion> {
  ScrollController _controller = ScrollController();
   int _index =  30;



  @override
  void initState() {
    _controller.addListener(_onScrollEvent);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_onScrollEvent);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: _controller,
        itemCount: _index,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text('List Item ${index + 1}')
          );
        }
    );
  }
  void _onScrollEvent() {
    final extentAfter = _controller.position.extentAfter;
    print("Extent after: $extentAfter");
    if (extentAfter < 800) {
     setState(() {
       _index = 50;
       print("enddddd");
     });
    }
  }
}