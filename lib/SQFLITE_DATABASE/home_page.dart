// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:my_cantroller/SQFLITE_DATABASE/person.dart';
//
// import 'database.dart';
// import 'edit_person.dart';
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void didUpdateWidget(MyHomePage oldWidget) {
//     // TODO: implement didUpdateWidget
//     super.didUpdateWidget(oldWidget);
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter SQLite"),
//         actions: <Widget>[
//           RaisedButton(
//             color: Theme
//                 .of(context)
//                 .primaryColor,
//             onPressed: () {
//               PersonDatabaseProvider.db.deleteAllPersons();
//               setState(() {});
//             },
//             child: Text(
//               "Delete all",
//               style: TextStyle(color: Colors.yellow),
//             ),
//           )
//         ],
//       ),
//       body:
//       FutureBuilder<List<dynamic>>(
//         future: PersonDatabaseProvider.db.getAllPersons(),
//         builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               physics: BouncingScrollPhysics(),
//               itemCount: snapshot.data!.length,
//               itemBuilder: (BuildContext context, int index) {
//                 Person item = snapshot.data![index];
//                 return Dismissible(
//                   key: UniqueKey(),
//                   background: Container(color: Colors.red),
//                   onDismissed: (direction) {
//                     PersonDatabaseProvider.db.deletePersonWithId(item.id);
//                   },
//                   child: ListTile(
//                     title: Text(item.name),
//                     subtitle: Text(item.city),
//                     leading: CircleAvatar(child: Text(item.id.toString())),
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) =>
//                               EditPerson(
//                                 true,
//                                 person: item,
//                               )));
//                     },
//                   ),
//                 );
//               },
//             );
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => EditPerson(false, person: Person(id: 12, name: "name", city: "city"),)));
//           }),
//     );
//   }
//
// }
//
//
//
//
//
//
