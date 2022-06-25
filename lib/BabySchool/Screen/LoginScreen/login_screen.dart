import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/Colors/splashScreenColors.dart';
import 'package:my_cantroller/BabySchool/Pages/Register/register_step.dart';


/// 3 oyna


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: <Widget>[
             Image.asset("assets/images/SplashScreen/im_vector.png",
                height: 170, width: 170),
             Padding(
              padding: const EdgeInsets.only(top: 40,left: 25),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:  Icon(Icons.arrow_back_sharp,color: AppColors.SplashScreenTextColor,)))
            ),
          ],
        ),
        Center(
          child: Image.asset(
            "assets/images/SplashScreen/im_dyed_SplashStart.png",
            height: 95,
            width: 77,
            color: AppColors.dydeSplashScreenColor,
          ),
        ),
        const SizedBox(height: 20),
        Center(
            child: Text(
          "LOGIN",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: AppColors.SplashScreenTextColor),
        )),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: "Enter Your Email Address",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                )),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: "Enter Password",
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                )),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("Forgot Password?",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.black26)),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(color: AppColors.SplashScreenTextColor,width:130,height: 1),
              const SizedBox(width: 15),
              const Text("Or Login With"),
              const SizedBox(width: 15),
               Container(color: AppColors.SplashScreenTextColor,width: 130,height: 1),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Stack(
          children: <Widget>[
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  RegisterStepPage()),
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
                      child: Text("Login Now",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70,left: 40),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    height: 40,
                    width: 130,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/icons/SplashScreen/ic_google.png"),
                          Text(
                            "Google",
                            style:
                            TextStyle(color: AppColors.SplashScreenTextColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    height: 40,
                    width: 130,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/icons/SplashScreen/ic_facebook.png"),
                          Text(
                            "Facebook",
                            style:
                            TextStyle(color: AppColors.SplashScreenTextColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(color: AppColors.SplashScreenTextColor)),
                    Text("Register Now",
                        style: TextStyle(color: AppColors.SplashScreenTextColor,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Image.asset("assets/images/SplashScreen/im_vector_right.png",
                      height: 170, width: 170),
                ),
              ],
            ),
          ],
        ),


      ],),
    );
  }
}
