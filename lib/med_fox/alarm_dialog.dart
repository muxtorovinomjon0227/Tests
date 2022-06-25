import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

import 'med_fil.dart';

class AlarmDialog extends StatefulWidget {
  const AlarmDialog({Key? key}) : super(key: key);

  @override
  _AlarmDialogState createState() => _AlarmDialogState();
}

class _AlarmDialogState extends State<AlarmDialog> {
  TextEditingController hourController = TextEditingController();
  TextEditingController minuteController = TextEditingController();
  final TextEditingController controller = TextEditingController();

  int _counter = 0;
  String result = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 300,
        height: 500,
        child: Column(
          children: [
            Expanded(
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: [
                    Center(
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(11)),
                                child: Center(
                                  child: TextField(
                                    controller: hourController,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                height: 40,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(11)),
                                child: Center(
                                  child: TextField(
                                    controller: minuteController,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(25),
                            child: TextButton(
                              child: const Text(
                                'Create alarm',
                                style: TextStyle(fontSize: 15.0),
                              ),
                              onPressed: () {
                                int hour;
                                int minutes;
                                hour = int.parse(hourController.text);
                                minutes = int.parse(minuteController.text);
                                FlutterAlarmClock.createAlarm(hour, minutes);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildDosage(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: const Text(
                              "Clear",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        const SizedBox(width: 50),
                        InkWell(
                          onTap: () {
                           Navigator.of(context).pop("dnofbof");
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => MyStatefulWidget(text1: "${hourController.text}"":""${minuteController.text}""/pill""$_counter", text: ""),
                            //     ));
                          },
                          child: const Text(
                            "Ok",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDosage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: _removCounter,
          icon: const Icon(Icons.remove),
        ),
        const SizedBox(width: 15),
        Column(
          children: [
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              width: 40,
              height: 1,
              color: Colors.black,
            ),
            const Text(
              "Pill",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
        const SizedBox(width: 15),
        IconButton(
          onPressed: _addCounter,
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _addCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

  void _removCounter() {
    setState(
      () {
        if (_counter > 0) {
          _counter--;
        }
        if (_counter <= 0) {
          _counter;
        }
      },
    );
  }

}
