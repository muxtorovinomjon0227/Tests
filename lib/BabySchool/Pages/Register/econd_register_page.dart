import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:my_cantroller/BabySchool/Pages/Register/sree_registor_step.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';

import '../../Colors/splashScreenColors.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
      ),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _date = "Add data.....";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Stack(
                children: <Widget>[
                  Image.asset("assets/images/SplashScreen/im_vector.png",
                      height: 170, width: 170),
                  Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25),
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
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
            ]),
          ]),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    elevation: 4.0,
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          theme: const DatePickerTheme(
                            containerHeight: 210.0,
                          ),
                          minTime: DateTime(2000, 1, 1),
                          maxTime: DateTime(2040, 12, 31), onConfirm: (date) {
                            if (kDebugMode) {
                              print('confirm $date');
                            }
                            _date = '${date.year} - ${date.month} - ${date.day}';
                            setState(() {});
                          }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.date_range,
                                size: 18.0,
                                color: Colors.teal,
                              ),
                              SizedBox(width: 30),
                              Text(
                                " $_date",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          buildImageStyle(),
        ],
      ),
    );
  }
  Widget buildImageStyle() {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Column(
            children: [
              Container(height: MediaQuery.of(context).size.height*0.2044),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/SplashScreen/im_vector_right.png",
                      height: 170, width: 170),
                ],
              ),
            ],
          ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  SethreeRegistorPage()),
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