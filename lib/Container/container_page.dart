import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  final TextEditingController _controller = TextEditingController();
  String? _newText = "";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 200),
            Text.rich(
              TextSpan(
                text: 'My name is ',
                style: const TextStyle(color: Colors.black),
                children: <InlineSpan>[
                  WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: ConstrainedBox(
                        constraints:  BoxConstraints(maxWidth: 200),
                        child:  TextField(
                          controller: _controller,
                        ),
                      )
                  ),
                  const TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
            Text(_newText.toString()),
            TextButton(onPressed: (){
              setState(() {
                _newText = _controller.text;
              });
            }, child: Text("add"))
          ],
        ),
      ),
    );
  }
}
