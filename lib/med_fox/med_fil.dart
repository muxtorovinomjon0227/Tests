import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:intl/intl.dart';
import 'package:my_cantroller/med_fox/custm_dialog.dart';
import 'package:my_cantroller/med_fox/alarm_dialog.dart';
import 'package:numberpicker/numberpicker.dart';

class  MyStatefulWidget extends StatefulWidget {
  String text;
  String text1;
  MyStatefulWidget({Key? key, required this.text,required this.text1}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  TimeOfDay? time1 = const TimeOfDay(hour: 8, minute: 00);
  TimeOfDay? time2 = const TimeOfDay(hour: 12, minute: 00);
  TimeOfDay? time3 = const TimeOfDay(hour: 18, minute: 00);
  var _currentValue = 0;
  var _currentValue1 = 0;
  var _currentValue2 = 0;
  var _dateTime = 0;
  TextEditingController dateinput = TextEditingController();
  final _dayTimeController = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
              ),
              const Text("MedFox"),
              InkWell(onTap: () {}, child: const Text("save"))
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          const Text(
                            "Orginal name",
                            style: TextStyle(color: Colors.black26),
                          ),
                          const Text(
                            "Custom medicine",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          _buildTextFormFiled(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: _medicineShape(),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: _medicineColor(),
                          ),
                          buildData(),
                          _buildDayTime(),
                          const SizedBox(height: 30),
                          _buildAlarmClok(),
                        ],
                      ),
                    );
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///  Hafta kunlari chiqadigan dialg  boshlandi
  _showConfirmationDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return const  CustomDialog();
      },
    );
  }
  ///   Hafta kunlari chiqadiga   dialog  tugadi

  ///=>  Budilnik chiqadigan dialog boshlandi
  _showAlarmDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return const AlarmDialog();
      },
    );
  }
  ///=>  Budilnik chiqadigan dialog  tugadi

  /// Displlay name Brinchi Text Filed boshlandi
  Widget _buildTextFormFiled() {
    return TextFormField(
      decoration: const InputDecoration(
          labelStyle: TextStyle(fontSize: 14, color: Colors.black26),
          labelText: "Display name",
          suffixStyle: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
  ///  Displlay name Brinchi Text Filed  Tugadi

  ///   Dorini Shaklini  belgilaydigan   ListView   boshlandi
  Widget _medicineShape() {
    return Column(
      children: [
        Row(
          children: const [
            Icon(
              Icons.color_lens_outlined,
              color: Colors.blue,
              size: 30,
            ),
            SizedBox(width: 15),
            Text(
              "Appearance",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Image.asset(
                  "assets/imges.png",
                  width: 100,
                  height: 100,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  ///   Dorini Shaklini  belgilaydigan   ListView   boshlandi
  Widget _medicineColor() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return const InkWell(
                child: Icon(
                  Icons.settings_input_svideo_rounded,
                  color: Colors.indigo,
                  size: 40,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildData() {
    return Column(
      children: [
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            color: Colors.black38,
            width: double.infinity,
            height: 1,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: const [
            Icon(
              Icons.calendar_today_rounded,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Text(
              "From: Today",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        TextField(
          decoration: const InputDecoration(
            icon: Icon(
              Icons.cloud,
              color: Colors.transparent,
            ),
            labelStyle: TextStyle(fontSize: 14, color: Colors.black26),
            labelText: "To: Indefinite",
          ),
          controller: dateinput,
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101));
            if (pickedDate != null) {
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              setState(
                () {
                  dateinput.text = formattedDate;
                },
              );
            } else {
            }
          },
        ),
      ],
    );
  }
  Widget _buildDayTime() {
    return Column(
      children: [
        Text(widget.text, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        TextField(
          onSubmitted: (String newText) {
            setState(() {});
          },
          controller: _dayTimeController,
          onTap: () {
            _showConfirmationDialog(context);
          },
          decoration: const InputDecoration(
            labelStyle: TextStyle(fontSize: 14, color: Colors.black26),
            labelText: "Everyday",
            icon: Icon(
              Icons.calendar_today_outlined,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAlarmClok() {
    return Column(
      children: [
        Row(
          children: const [
            Icon(
              Icons.alarm,
              color: Colors.blue,
            ),
            SizedBox(width: 15),
            Text(
              "Reminders & Dosage",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        _buildTextButton(),
        _isSelected ? _buildCloudIcon() : _buildAddTime(),
      ],
    );
  }

  bool _isSelected = true;

  Widget _buildTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 90),
        TextButton(
            onPressed: () {
              setState(
                () {
                  _isSelected = true;
                },
              );
            },
            child: _isSelected
                ? const Text("Standart")
                : const Text(
                    "Standart",
                    style: TextStyle(color: Colors.black26),
                  )),
        const SizedBox(width: 60),
        TextButton(
          onPressed: () {
            setState(
              () {
                _isSelected = false;
              },
            );
          },
          child: _isSelected == false
              ? const Text("Custom")
              : const Text(
                  "Custom",
                  style: TextStyle(color: Colors.black26),
                ),
        ),
      ],
    );
  }

  bool _isBoolTime = false;
  bool _isBoolTime1 = false;
  bool _isBoolTime2 = false;

  Widget _buildCloudIcon() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.wb_twilight,
              color: Colors.orangeAccent,
              size: 36,
            ),
            Icon(
              Icons.wb_sunny,
              color: Colors.orangeAccent,
              size: 36,
            ),
            Icon(
              Icons.wb_twighlight,
              color: Colors.orangeAccent,
              size: 36,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NumberPicker(
              value: _currentValue,
              minValue: 0,
              maxValue: 98,
              onChanged: (value) {
                setState(() {
                  if( _isBoolTime == false) {
                    _currentValue = value;
                  }
                });
              },
            ),
            NumberPicker(
              value: _currentValue1,
              minValue: 0,
              maxValue: 98,
              onChanged: (value){
                setState(() {
                  if( _isBoolTime1 == false) {
                    _currentValue1 = value;
                  }
                });
              },
            ),
            NumberPicker(
              value: _currentValue2,
              minValue: 0,
              maxValue: 98,
              onChanged: (value) {
                setState(() {

                  if( _isBoolTime2 == false) {
                    _currentValue2 = value;
                  }
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    TimeOfDay? newTime1 = await showTimePicker(
                      context: context,
                      initialTime: time1!,
                    );
                    if (newTime1 != null) {

                      ///  Brinchi budlnik   va  dorilar soni chiqdi
                      int hour;
                      int minutes;
                      hour = int.parse(time1.toString().substring(10, 12));
                      minutes = int.parse(time1.toString().substring(13, 15));
                      FlutterAlarmClock.createAlarm(hour, minutes);
                      setState(() {
                        _isBoolTime = true;
                        time1 = newTime1;
                      });
                    }
                  },
                  child: Text(
                    '${time1!.hour.toString()}:${time1!.minute.toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 26),
                  ),
                ),
              const SizedBox(height: 20),
                /// bu yerda  Qysi paytga budilnik qo'yilgani chiqadi
                if (_isBoolTime == true)
                  Text(
                      "${time1.toString().substring(10, 15)}/pill${_currentValue.toString()}"),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    TimeOfDay? newTime1 = await showTimePicker(
                      context: context,
                      initialTime: time2!,
                    );
                    if (newTime1 != null) {

                      /// Ikkinchi   vaqt
                      int hour2;
                      int minutes2;
                      hour2 = int.parse(time2.toString().substring(10, 12));
                      minutes2 = int.parse(time2.toString().substring(13, 15));
                      FlutterAlarmClock.createAlarm(hour2, minutes2);
                      setState(() {
                        _isBoolTime1 = true;
                        time2 = newTime1;
                      },
                      );
                    }
                  },
                  child: Text(
                    '${time2!.hour.toString()}:${time2!.minute.toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 26),
                  ),
                ),
               const SizedBox(height: 20),
                /// bu yerda  Qysi paytga budilnik qo'yilgani chiqadi
                if (_isBoolTime1 == true)
                  Text(
                      "${time2.toString().substring(10, 15)}/pill${_currentValue1.toString()}"),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    TimeOfDay? newTime1 = await showTimePicker(
                      context: context,
                      initialTime: time3!,
                    );
                    if (newTime1 != null) {
                      /// Uchinchi   vaqt
                      int hour3;
                      int minutes3;
                      hour3 = int.parse(time3.toString().substring(10, 12));
                      minutes3 = int.parse(time3.toString().substring(13, 15));
                      FlutterAlarmClock.createAlarm(hour3, minutes3);
                      setState(() {
                        _isBoolTime2 = true;
                        time3 = newTime1;
                      },
                      );
                    }
                  },
                  child: Text(
                    '${time3!.hour.toString()}:${time3!.minute.toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 26),
                  ),
                ),
               const SizedBox(height: 20),
                /// bu yerda  Qysi paytga budilnik qo'yilgani chiqadi
                if (_isBoolTime2 == true)
                  Text(
                      "${time3.toString().substring(10, 15)}/pill${_currentValue2.toString()}"),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAddTime() {
    return Column(
      children: [
        Text(widget.text1),
        TextButton(

          onPressed: () {
            _showAlarmDialog(context);
          },
          child: Text("ADD TIME"),
        ),
      ],
    );
  }
}
