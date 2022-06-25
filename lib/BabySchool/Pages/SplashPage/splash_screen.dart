import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/Pages/SplashStart/splash_start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/SplashScreen/im_vector.png",
                  height: 170, width: 170),
              Padding(
                padding: const EdgeInsets.only(left: 44, bottom: 60),
                child: Image.asset("assets/images/SplashScreen/im_dyed.png",
                    width: 304, height: 330, color: Colors.black),
              ),
              const Center(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. "
                  "In magana vulputate malesuada \n tristique enim commodo ",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 59),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SplashStart()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(22),
              ),
              height: 44,
              width: 130,
              child: const Center(
                  child: Text("Get Started",
                      style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }
}
