import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';
import '../../Colors/splashScreenColors.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

import 'final_register_page.dart';

class FiwethRegisterPage extends StatefulWidget {
  const FiwethRegisterPage({Key? key}) : super(key: key);

  @override
  State<FiwethRegisterPage> createState() => _FiwethRegisterPageState();
}

class _FiwethRegisterPageState extends State<FiwethRegisterPage> {
  final CountDownController controller = CountDownController();
  final _timeController = TextEditingController();



  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              Image.asset("assets/images/SplashScreen/im_vector.png",
                  height: 170, width: 170),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: AppColors.SplashScreenTextColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 160),
                child: Image.asset(
                  "assets/images/SplashScreen/im_dyed_SplashStart.png",
                  height: 95,
                  width: 77,
                  color: AppColors.dydeSplashScreenColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "What should we count as day sleep for your Child?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.SplashScreenTextColor),
            ),
          ),
          Center(
            heightFactor: 2,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In magna vulputate malesuada tristique enim commodo.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14, color: AppColors.SplashScreenTextColor),
            ),
          ),
          _buildTimer(),
          _buildTextFormFiled(),
          const SizedBox(height: 24.4),
          Stack(
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  FinalRegisterPage()),
                    );
                  },
                  child: Container(
                    height: 44,
                    width: 100,
                    child: const Center(
                        child: Text(
                      "Next",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: AppColors.dydeSplashScreenColor,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                          "assets/images/SplashScreen/im_vector_right.png",
                          height: 170,
                          width: 170),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTextFormFiled() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: _timeController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: Icon(
            Icons.timelapse_sharp,
            color: AppColors.dydeSplashScreenColor,
            size: 40,
          ),
          labelText: "Enter duration time",
          labelStyle: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  Widget _buildTimer() {
    return Padding(
      padding: const EdgeInsets.only(top: 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NeonCircularTimer(
              onComplete: () {
                controller.restart();
              },
              autoStart: false,
              width: 100,
              controller: controller,
              duration: 60,
              strokeWidth: 5,
              isTimerTextShown: true,
              neumorphicEffect: true,
              textStyle: const TextStyle(fontSize: 12),
              outerStrokeColor: Colors.grey.shade100,
              innerFillGradient: LinearGradient(
                colors: [
                  Colors.greenAccent.shade200,
                  Colors.blueAccent.shade400
                ],
              ),
              neonGradient: LinearGradient(
                colors: [
                  Colors.greenAccent.shade200,
                  Colors.blueAccent.shade400
                ],
              ),
              strokeCap: StrokeCap.round,
              innerFillColor: Colors.black12,
              backgroudColor: Colors.grey.shade100,
              neonColor: Colors.blue.shade900),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {
                      controller.resume();
                    }),
                IconButton(
                    icon: Icon(Icons.pause),
                    onPressed: () {
                      controller.pause();
                    }),
                IconButton(
                  icon: Icon(Icons.repeat),
                  onPressed: () {
                    controller.restart();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
