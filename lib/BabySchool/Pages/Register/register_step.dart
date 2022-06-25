import 'package:flutter/material.dart';
import '../../Colors/splashScreenColors.dart';
import 'econd_register_page.dart';

class RegisterStepPage extends StatelessWidget {
  const RegisterStepPage({Key? key}) : super(key: key);

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
            "How shall we reff to your child in the\n "
            "app and any recommendations\n"
            "provide?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.SplashScreenTextColor,
            ),
          ),
        ),
        buildTextFild(),
        const SizedBox(height: 10),
        buildImageStyle(context),
      ]),
    );
  }

  Widget buildTextFild() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                prefixText: "Enter Your Child\nName",
                prefixStyle: TextStyle(fontSize: 14),
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: "Nmae",
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.account_circle_rounded,
                )),
          ),
        ),
      ],
    );
  }

  Widget buildImageStyle(context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Image.asset("assets/images/SplashScreen/Im_litle_baby.png",height: 140,width: 130),
                  SizedBox(width: 30),
                  Image.asset("assets/images/SplashScreen/Im_litle_girl.png",height: 140,width: 130),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 176.4),
                  child: Image.asset("assets/images/SplashScreen/im_vector_right.png",
                      height: 170, width: 170),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Center(child: Image.asset("assets/images/SplashScreen/im_childrn.png",height: 110,width: 260)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const DateTimePicker()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.dydeSplashScreenColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    height: 44,
                    width: 130,
                    child: const Center(
                        child: Text("Next",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
