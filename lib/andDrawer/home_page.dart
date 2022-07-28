
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_cantroller/andDrawer/zoom_scaffold.dart';
import 'package:provider/provider.dart';
import 'menue_page.dart';




class MyHomePage10 extends StatefulWidget {
  @override
  _MyHomePage10State createState() =>  _MyHomePage10State();
}

class _MyHomePage10State extends State<MyHomePage10> with TickerProviderStateMixin {
  late MenuController menuController;

  @override
  void initState() {
    super.initState();
    menuController = MenuController(
      vsync: this,
    )
      ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MenuController>(
        create: (context) => MenuController(vsync: AnimatedListState()),
        child: Builder(
            builder: (context) {
              return ZoomScaffold(
                menuScreen: MenuScreen(),
                contentScreen: Layout(
                    contentBuilder: (cc) =>
                        Container(
                          color: Colors.grey[200],
                          child: Container(
                            color: Colors.grey[200],
                          ),
                        )),
              );
            }
        )
    );
  }
}