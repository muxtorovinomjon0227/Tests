// import 'package:flutter/material.dart';
// import 'dart:convert';
//
// class TextForimFiled extends StatefulWidget {
//   const TextForimFiled({Key? key}) : super(key: key);
//
//   @override
//   State<TextForimFiled> createState() => _TextForimFiledState();
// }
//
// class _TextForimFiledState extends State<TextForimFiled> {
//   final _formKey = GlobalKey<FormState>();
//   var json = '[{"group":"A","person":[{"name":"John","age":18},{"name":"Jack","age":21}]},{"group":"B","person":[{"name":"Oliver","age":24}]},{"group":"C","person":null}]';
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: TextFormField(
//               validator: (value) {
//                 if (value != "@" || value!.isEmpty) {
//                   return '😃 😒 😓 😓 😔 😕 ';
//                 }
//                 return null;
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Processing Data')),
//                   );
//                 }
//               },
//               child: const Center(child: Text('Submit')),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void main( ){
//     final data = dataFromJson(json);
//     data.forEach((e) {
//       if (e != null) {
//         List<String> _list = [];
//         e.person.forEach((p) {
//           if (p != null) {
//             String x = p.name.toLowerCase().toString();
//             String y = p.age.toString();
//             String z = '${x}_$y';
//             _list.add(z);
//             e.newList = _list;
//           }
//         });
//       }
//     });
//
//     data.forEach((e) => print(e.newList));
//   }
//
//
// }