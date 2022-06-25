import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_cantroller/scaffold/scaffold_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BabySchool/Pages/Register/fourth_register_page.dart';
import 'BabySchool/Pages/SplashPage/splash_screen.dart';
import 'BabySchool/Pages/SplashStart/splash_start.dart';
import 'BabySchool/Screen/LoginScreen/login_screen.dart';
import 'list_view/home_list.dart';
import 'med_fox/add_text.dart';
import 'med_fox/alarm_dialog.dart';
import 'med_fox/med_fil.dart';
import 'movie/wiew/view_model.dart';

//
// void main(){
//   var log = Logger();
//   runZonedGuarded((){
//     runApp(
//       DevicePreview(
//         enabled: true,
//         builder : (context) => const MyApp(),
//       ),
//     );
//   }, (error, stacktrace){
//     log.e(erroe);
//     log.v(stacktrace);
//   });
// }



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {


  bool   isDarkModeEnabled =  false;
  String stringValue = "No value";
  @override
  void initState() {
    super.initState();
    initialMode();
  }
  Future<bool?> initialMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDarkModeEnabled = prefs.getBool("isDarkModeEnabled");
    return  isDarkModeEnabled;
  }

  void _saveIsDark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDarkModeEnabled", false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Day / night switcher example',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
          scaffoldBackgroundColor: const Color(0xFF15202B),
        ),
        themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
        home: Scaffold(
          // drawer: Drawer(
          //   child: Row(
          //     children: const [
          //       // Row(
          //       //   crossAxisAlignment: CrossAxisAlignment.center,
          //       //   mainAxisSize: MainAxisSize.max,
          //       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       //   children: [
          //       //     DayNightSwitcher(
          //       //       isDarkModeEnabled: isDarkModeEnabled,
          //       //       onStateChanged: onStateChanged,
          //       //     ),
          //       //     Padding(
          //       //       padding: EdgeInsets.only(top: 2),
          //       //       child: DayNightSwitcherIcon(
          //       //         onLongPress:  (){
          //       //           _saveIsDark();
          //       //         },
          //       //         isDarkModeEnabled: isDarkModeEnabled,
          //       //         onStateChanged: onStateChanged,
          //       //       ),
          //       //     ),
          //       //     Padding(
          //       //       padding: EdgeInsets.only(top: 10),
          //       //       child: Text('' +
          //       //           (isDarkModeEnabled ? 'enabled' : 'disabled') +
          //       //           '.'),
          //       //     ),
          //       //   ],
          //       // ),
          //     ],
          //   ),
          // ),
          // appBar: AppBar(
          //   title: Text("Drawer"),
          //   actions: [
          //     isDarkModeEnabled
          //       ? IconButton(
          //           onPressed: () {
          //             _saveIsDark();
          //             setState(() {
          //               isDarkModeEnabled=!isDarkModeEnabled;
          //             });
          //           },
          //           icon: const Icon(
          //             Icons.light_mode,
          //             color: Colors.black,
          //           ))
          //      : IconButton(
          //           onPressed: () {
          //             _saveIsDark();
          //             setState(() {
          //               isDarkModeEnabled=!isDarkModeEnabled;
          //             });
          //           },
          //           icon: const  Icon(
          //             Icons.light_mode,
          //             color: Colors.yellow,
          //           ))
          //   ],
          // ),
          body: SplashScreen(),
          // body: MyStatefulWidget(text: '', text1: '',),
        ),
      ),
    );
  }

  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }
}
class StaticDeta {
  static String IS_DARK_MODE = "is_dark_mode";
  static String IS_LIGHT_MODE = "is_light_mode";
}




// void main() {
//   runApp(MaterialApp( home: MyHomePage(),));
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<MyHomePage> {
//   bool valuefirst = false;
//   bool valuesecond = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: ListView.builder(
//               itemCount: 7,
//               itemBuilder: (BuildContext context, int index){
//                 return Column(
//                   children: <Widget>[
//                     CheckboxListTile(
//                       title: const Text('Ringing at 4:30 AM every day'),
//                       value: valuefirst,
//                       onChanged: (bool? value) {
//                         setState(() {
//                           valuefirst = value!;
//                         });
//                       },
//                     ),
//                   ],
//                 );
//               })
//       ),
//     );
//   }
// }

///     Pagedan Pageaga malumotni olib o'tsh

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     title: 'Flutter',
//     home: FirstScreen(),
//   ));
// }
//
// class FirstScreen extends StatefulWidget {
//   @override
//   _FirstScreenState createState() {
//     return _FirstScreenState();
//   }
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//
//   // this allows us to access the TextField text
//   TextEditingController textFieldController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('First screen')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//
//           Padding(
//             padding: const EdgeInsets.all(32.0),
//             child: TextField(
//               controller: textFieldController,
//               style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//
//           RaisedButton(
//             child: Text(
//               'Go to second screen',
//               style: TextStyle(fontSize: 24),
//             ),
//             onPressed: () {
//               _sendDataToSecondScreen(context);
//             },
//           )
//
//         ],
//       ),
//     );
//   }
//
//   // get the text in the TextField and start the Second Screen
//   void _sendDataToSecondScreen(BuildContext context) {
//     String textToSend = textFieldController.text;
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => SecondScreen(text: textToSend,),
//         ));
//   }
// }
//
// class SecondScreen extends StatelessWidget {
//   final String text;
//
//   // receive data from the FirstScreen as a parameter
//   SecondScreen({Key? key, required this.text}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second screen')),
//       body: Center(
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }