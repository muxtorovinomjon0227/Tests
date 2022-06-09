import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  final TextEditingController controller = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Input Text"), backgroundColor: Colors.deepOrange),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                decoration: const InputDecoration(hintText: "Type in here"),
                onSubmitted: (String str) {
                  setState(() {
                    result = result + '\n' + str;
                  });
                  controller.text = "";
                },
                controller: controller),
            Text(result),
            ElevatedButton(
                onLongPress: () {},
                onPressed: () {
                  controller:controller;
                  // FocusManager.instance.primaryFocus?.unfocus();
                  setState(() {});
                },
                child: const Text("Add Text"))
          ],
        ),
      ),
    );
  }
}


class TimeToCode extends StatefulWidget {
  TimeToCode({Key? key}) : super(key: key);

  @override
  _TimeToCodeState createState() => _TimeToCodeState();
}

class _TimeToCodeState extends State<TimeToCode> {
  TextEditingController chargesMaxController = TextEditingController();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  bool tile1CheckBox = false;
  bool tile2CheckBox = false;

  @override
  void initState() {
    super.initState();

    chargesMaxController.addListener(() {
      if (tile1CheckBox) {
        setState(() {
          controller1.text = chargesMaxController.text;
        });
      }
      if (tile2CheckBox) {
        setState(() {
          controller2.text = chargesMaxController.text;
        });
      }
    });
  }
  @override
  void dispose() {
    chargesMaxController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("chargesMax "),
            TextField(
              controller: chargesMaxController,
            ),
            ListTile(
              leading: Checkbox(
                value: tile1CheckBox,
                onChanged: (value) {
                  setState(() {
                    tile1CheckBox = value!;
                  });
                  if (value!) {
                    setState(() {
                      controller1.text = chargesMaxController
                          .text; // handle Ui update on checkedBOx value changes
                    });
                  }
                },
              ),
              title: TextField(
                controller: controller1,
              ),
            ),
            ListTile(
              leading: Checkbox(
                value: tile2CheckBox,
                onChanged: (value) {
                  setState(() {
                    tile2CheckBox = value!;
                  });
                  if (value!) {
                    setState(() {
                      controller2.text = chargesMaxController
                          .text; // handle Ui update on checkedBOx value changes
                    });
                  }
                },
              ),
              title: TextField(
                controller: controller2,
              ),
            )
          ],
        ),
      ),
    );
  }
}