import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'med_fil.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {


  final List<bool> _isDaysChecked = [true, true, true, true, true, true, true];
  final _daysController = TextEditingController();
  TextEditingController textFieldController = TextEditingController();


  final List _weekList = ["Day(s)", "Week(s)", "Month(s)"];
  final List _newDaysList = [];
  final List _newWeekList = [];


  bool _isChange = false;
  bool isPressInkWell = true;

  final List<String> _daysTextsList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 300,
        height: 500,
        child: Column(
          children: [
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    toolbarHeight: 1,
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    bottom:  const  TabBar(
                      tabs:  <Widget>[
                        Tab(
                            icon:  Text(
                          "ALL DAYS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        )),
                         Tab(
                            icon: Text(
                          "INTERVAL",
                          style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        )),
                      ],
                    ),
                  ),
                  body: Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            Expanded(
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: _daysTextsList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CheckboxListTile(
                                        title: Text(_daysTextsList[index]),
                                        value: _isDaysChecked[index],
                                        onChanged: (val) {
                                          setState(() {
                                            _isChange=true;
                                            _isDaysChecked[index] = val!;
                                            for (var item in _isDaysChecked) {
                                              if (item == false) {}
                                            }
                                           _newDaysList.add(_daysTextsList[index]);
                                          });
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            _buildInterval(),
                          ],
                        ),
                      ),
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
                                if(isPressInkWell == true) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyStatefulWidget(
                                        text:
                                        _isChange
                                     ? _newDaysList.toString()
                                      : "Everyday", text1: '',
                                      ),

                                    ));
                                } else{
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyStatefulWidget(
                                          text:
                                          _isChange
                                              ? "Every ${_newWeekList.toString()}"
                                              : "Everyday", text1: '',
                                        ),

                                      ));
                                }

                              },
                              child: const Text(
                                "Ok",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildInterval() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       const SizedBox(height: 120),
        const Text(
          "Every",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(width: 60),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
          height: 120,
          width: 50,
          child: Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    _newWeekList.add([index+1].toString());
                  },
                  child: Text(
                    (index + 1).toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18, width: 2),
              Expanded(
                child: ListView.builder(
                  itemCount: _weekList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _newWeekList.add(_weekList[index]);
                              });
                            },
                            child: Text(
                              (_weekList[index].toString()),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// Text(
// "ALL DAYS",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 18,
// color: Colors.black),
// )),