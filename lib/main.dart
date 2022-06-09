import 'package:flutter/material.dart';
import 'package:my_cantroller/movie/ui/home_page.dart';
import 'package:provider/provider.dart';

import 'list_view/home_list.dart';
import 'movie/wiew/view_model.dart';

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
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage2(),
    );
  }
}

