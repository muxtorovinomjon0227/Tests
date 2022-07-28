import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() =>  _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _loading = false;

  void _onLoading() {
    setState(() {
      _loading = true;
      Future.delayed( const Duration(seconds: 1), _login);
    });
  }


  Future _login() async{
    setState((){
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {


    var body =  Column(
      children: <Widget>[
        Container(
          height: 40.0,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
          decoration:  const BoxDecoration(
            color: Colors.white,
          ),
          child:  const TextField(
            decoration:  InputDecoration.collapsed(hintText: "username"),
          ),
        ),
        Container(
          height: 40.0,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(15.0),
          decoration: const  BoxDecoration(
            color: Colors.white,
          ),
          child:  const TextField(
            decoration:  InputDecoration.collapsed(hintText: "password"),
          ),
        ),
      ],
    );


    var bodyProgress =   Stack(
      children: <Widget>[
        body,
         Container(
          alignment: AlignmentDirectional.center,
          decoration:  const BoxDecoration(
            color: Colors.white70,
          ),
          child:  Container(
            decoration:  BoxDecoration(
                color: Colors.blue[200],
                borderRadius:  BorderRadius.circular(10.0)
            ),
            width: 300.0,
            height: 200.0,
            alignment: AlignmentDirectional.center,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 const Center(
                  child:  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child:  CircularProgressIndicator(
                      value: null,
                      strokeWidth: 7.0,
                    ),
                  ),
                ),
                 Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: const Center(
                    child:  Text(
                      "loading.. wait...",
                      style:   TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    return  Scaffold(

      extendBody: true,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.blue,
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 25,
          // onTap: _onItemTapped,
          // elevation: 5
      ),
      drawer:  const Drawer(
        elevation: 100,
        semanticLabel: "1111",
        child: Center(child: Text("Drawer")),
      ),
      appBar:  AppBar(
        title:  const Text("Chek indicator"),
      ),
      body:  Container(
          decoration:  BoxDecoration(
              color: Colors.blue[200]
          ),
          child: _loading ? bodyProgress : body
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: _onLoading,
        tooltip: 'Loading',
        child:  const Icon(Icons.check),
      ),
    );
  }
}