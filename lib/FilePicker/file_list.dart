//
//
// import 'dart:typed_data';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DemoApp0 extends StatefulWidget {
//   DemoApp0({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   _DemoApp0State createState() => _DemoApp0State();
// }
//
// class _DemoApp0State extends State<DemoApp0> {
//   final Map<String, Uint8List> files = {};
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           TextButton(
//             onPressed: ()=>pickWebFile(),
//             child: Text("select file"),
//           ),
//           Column(
//             children: files.entries
//                 .map((e) => Column(
//               children: [
//                 Text(e.key),
//                 SizedBox(
//                   width: 200,
//                   height: 300,
//                   child: Image.memory(e.value),
//                 )
//               ],
//             ))
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }
//
//   Future<void> pickWebFile() async {
//     List<html.File> webFiles = [];
//     html.InputElement uploadInput = html.FileUploadInputElement();
//     uploadInput.click();
//     uploadInput.onChange.listen((e) {
//       webFiles = uploadInput.files;
//       for (html.File webFile in webFiles) {
//         var r =  html.FileReader();
//         Uint8List fileData;
//         r.readAsArrayBuffer(webFile);
//         r.onLoadEnd.listen((e) async {
//           fileData = r.result;
//           if (webFile.size < 4194304) {
//             setState(() {
//               files[webFile.name] = fileData;
//             });
//
//           }
//         });
//       }
//     });
//   }
// }