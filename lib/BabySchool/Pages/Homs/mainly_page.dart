import 'package:flutter/material.dart';

import 'homs_page.dart';

class MainlyPage extends StatefulWidget {
  const MainlyPage({Key? key}) : super(key: key);

  @override
  State<MainlyPage> createState() => _MainlyPageState();

}

class _MainlyPageState extends State<MainlyPage> {


  int currentIndex = 0;
  final screens = const [
    HomesPage(),
    Center(
      child: Text(
        "2",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "3",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "4"
            "",
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        iconSize: 25,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) =>
            setState(
                  () => currentIndex = index,
            ),
        items:  [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Image.asset("assets/icons/SplashScreen/ic_float_ec_1.png",height: 30,width: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Image.asset("assets/icons/SplashScreen/ic_float_ec_2.png",height: 30,width: 30,),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Image.asset("assets/icons/SplashScreen/im_float_ec_3.png",height: 30,width: 30,),
            label: 'Image',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Image.asset("assets/icons/SplashScreen/im_float_ec_4.png",height: 30,width: 30,),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}