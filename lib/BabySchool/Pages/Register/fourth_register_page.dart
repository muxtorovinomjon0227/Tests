import 'package:flutter/material.dart';
import '../../Colors/splashScreenColors.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class FoorthRegisterPage extends StatelessWidget {
  const FoorthRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    "How shell we reffer to your child in  the \n"
                    "app and any recommendations\n"
                    "provided?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.SplashScreenTextColor),
                  )),
                  const SizedBox(height: 40),
                  TextButton(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2040, 6, 7), onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: const TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
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
                      ),),
                  // buildBabySylipTame(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget buildBabySylipTame() {
   return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            color: Colors.blue,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text('Red container should be scrollable'),
                    Container(
                      width: double.infinity,
                      height: 700.0,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white.withOpacity(0.7),
                      child: Text('I will have a column here'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
