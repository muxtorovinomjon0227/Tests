import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';
import 'package:numberpicker/numberpicker.dart';
import '../../Colors/splashScreenColors.dart';
import 'fiveth_register_page.dart';

class FoorthRegisterPage extends StatefulWidget {
  const FoorthRegisterPage({Key? key}) : super(key: key);

  @override
  State<FoorthRegisterPage> createState() => _FoorthRegisterPageState();
}

class _FoorthRegisterPageState extends State<FoorthRegisterPage> {
  var _currentValueBaby = 1;
  bool _isBoolTime = false;
  bool _isBoolTimeText = false;

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/SplashScreen/ic_naps.png"),
                          const SizedBox(width: 10),
                          const Text("Naps per day:"),
                          const SizedBox(width: 10),
                          _isBoolTimeText
                            ? Text(_currentValueBaby.toString(),style: const TextStyle(color: Colors.blue),)
                              : Container(),
                          SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                          _isBoolTimeText
                          ? IconButton(onPressed: (){
                            setState(() {
                              _isBoolTimeText = false;
                              _isBoolTime = false;
                            });
                          }, icon: Icon(Icons.close,color: Colors.blue,))
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: NumberPicker(
                      itemWidth: 200,
                      itemHeight: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8)),
                      value: _currentValueBaby,
                      minValue: 0,
                      maxValue: 98,
                      onChanged: (value) {
                        setState(
                          () {
                            if (_isBoolTime == false) {
                              _currentValueBaby = value;
                            }
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                                _isBoolTimeText = true;
                                _isBoolTime = true;
                              },
                            );
                          },
                          child: const Text("ADD TIME"))),
                  const SizedBox(height: 35),
                  Stack(
                    children: [
                      Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  FiwethRegisterPage()),
                            );
                          },
                          child: Container(
                            height: 44,
                            width: 100,
                            child: Center(child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold),)),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
                              color: AppColors.dydeSplashScreenColor,


                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(height: MediaQuery.of(context).size.height*0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset("assets/images/SplashScreen/im_vector_right.png",
                                  height: 170, width: 170),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
