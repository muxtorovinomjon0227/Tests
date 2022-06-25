import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/Colors/splashScreenColors.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';

import '../login_screen.dart';

class SplashStart extends StatelessWidget {
  const SplashStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Image.asset("assets/images/SplashScreen/im_baby.png"),
          Image.asset("assets/images/SplashScreen/im_dyed_SplashStart.png",
              width: 77, height: 97, color: AppColors.dydeSplashScreenColor),
          const SizedBox(height: 100),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(22),
              ),
              height: 44,
              width: 300,
              child: const Center(
                  child: Text("I'm a new User",
                      style: TextStyle(color: Colors.white))),
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(22),
              ),
              height: 44,
              width: 300,
              child: const Center(
                  child: Text("I'm returing to Sigin In ",
                      style: TextStyle(color: Colors.white))),
            ),
          ),
        ]),
      ),
    );
  }
}
