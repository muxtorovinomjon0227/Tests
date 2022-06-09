import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'flow_shared.dart';
import 'global.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key,required this.controller}) : super(key: key);
  final AnimationController controller;


  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  static const double size = 55;

  final double lockerHeight = 200;
  double timerWidth = 0;

  late Animation<double> buttonScaleAnimation;
  late Animation<double> timerAnimation;
  late Animation<double> lockerAnimation;

  DateTime? startTime;
  String recordDuration = "00:00";

  bool isLocked = false;
  bool showLottie = false;
  bool _isOnPressed = false;

  @override
  void initState() {
    super.initState();
    buttonScaleAnimation = Tween<double>(begin: 1, end: 2).animate(
      CurvedAnimation(
        parent: widget.controller,
        curve: const Interval(0.0, 0.6, curve: Curves.elasticInOut),
      ),
    );
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    timerWidth =
        MediaQuery.of(context).size.width - 2 * Globals.defaultPadding - 4;
    timerAnimation =
        Tween<double>(begin: timerWidth + Globals.defaultPadding, end: 0)
            .animate(
          CurvedAnimation(
            parent: widget.controller,
            curve: const Interval(0.2, 1, curve: Curves.easeIn),
          ),
        );
    lockerAnimation =
        Tween<double>(begin: lockerHeight + Globals.defaultPadding, end: 0)
            .animate(
          CurvedAnimation(
            parent: widget.controller,
            curve: const Interval(0.2, 1, curve: Curves.easeIn),
          ),
        );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draver"),
      ),
      body: Center(
        child: Column(
          children: [
            audioButton(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter text",
                  suffixIcon: audioButton(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildText() {
    return Container(
        child: _isOnPressed == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(" < Bekor qlish uchun  suring"),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isOnPressed = !_isOnPressed;
                      });
                    },
                    icon: Icon(Icons.keyboard_voice_rounded),
                  )
                ],
              )
            : IconButton(
                onPressed: () {
                  setState(() {
                    _isOnPressed = !_isOnPressed;
                  });
                },
                icon: Icon(Icons.keyboard_voice_rounded),
              ));
  }

  Widget audioButton() {
    return GestureDetector(
      child: Transform.scale(
        scale: buttonScaleAnimation.value,
        child: Container(
          child: const Icon(Icons.mic),
          height: 55,
          width: 55,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      onLongPressDown: (_) {
        debugPrint("onLongPressDown");
        widget.controller.forward();
      },
      onLongPressEnd: (details) async {
        debugPrint("onLongPressEnd");

      },
      onLongPressCancel: () {
        debugPrint("onLongPressCancel");
        widget.controller.reverse();
      },
      onLongPress: () async {
        debugPrint("onLongPress");

      },
    );
  }
  Widget cancelSlider() {
    return Positioned(
      right: -timerAnimation.value,
      child: Container(
        height: size,
        width: timerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Globals.borderRadius),
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              showLottie ?  Container() : Text(recordDuration),
              const SizedBox(width: size),
              FlowShader(
                child: Row(
                  children: const [
                    Icon(Icons.keyboard_arrow_left),
                    Text("Slide to cancel")
                  ],
                ),
                duration: const Duration(seconds: 3),
                flowColors: const [Colors.white, Colors.grey],
              ),
              const SizedBox(width: size),
            ],
          ),
        ),
      ),
    );
  }









  Widget buildIcon() {
    return Transform.scale(
      scale:  buttonScaleAnimation.value,
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        onLongPressDown: (_) {
          widget.controller.forward();
          setState(() {
            _isOnPressed = !_isOnPressed;
          });
        },


        child: Container(
            child: _isOnPressed == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Text(" < Bekor qlish uchun  suring"),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _isOnPressed = !_isOnPressed;
                          });
                        },
                        icon: Icon(Icons.mic,color: Colors.blue,),
                      )
                    ],
                  )
                : IconButton(
                    onPressed: () {
                      setState(() {
                        _isOnPressed = !_isOnPressed;
                      });
                    },
                    icon: Icon(Icons.mic),
                  )),
      ),
    );
  }
}
