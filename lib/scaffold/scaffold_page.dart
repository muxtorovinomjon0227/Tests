import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticleScreen extends StatelessWidget {
  const CircularParticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Stack(
        children: [
          Center(
            child: Container(
              key: UniqueKey(),
              child: Center(
                child: CircularParticle(
                  // key: UniqueKey(),
                  awayRadius: 80,
                  numberOfParticles: 200,
                  speedOfParticles: 1,
                  height: screenHeight,
                  width: screenWidth,
                  onTapAnimation: true,
                  particleColor: Colors.white.withAlpha(150),
                  awayAnimationDuration: Duration(milliseconds: 600),
                  maxParticleSize: 8,
                  isRandSize: false,
                  isRandomColor: true,
                  randColorList: [
                    Colors.red.withAlpha(210),
                    Colors.white.withAlpha(210),
                    Colors.yellow.withAlpha(210),
                    Colors.green.withAlpha(210)
                  ],
                  awayAnimationCurve: Curves.easeInOutBack,
                  enableHover: true,
                  hoverColor: Colors.white,
                  hoverRadius: 90,
                  connectDots: false, //not recommended
                ),
              ),
            ),
          ),
          Center(child: ElevatedButton(onPressed: (){}, child: Text("Keyingi saxifag o'tish"),)),
        ],
      ),
    );
  }
}
