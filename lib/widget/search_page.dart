import 'package:flutter/material.dart';

class SEARCHPAGE extends StatefulWidget {
  const SEARCHPAGE({Key? key}) : super(key: key);

  @override
  _SEARCHPAGEState createState() => _SEARCHPAGEState();
}

class _SEARCHPAGEState extends State<SEARCHPAGE> {
  bool _isButton = true;

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Abdulla", "age": 29},
    {"id": 2, "name": "Ahror", "age": 40},
    {"id": 3, "name": "Bobur", "age": 5},
    {"id": 4, "name": "Burxon", "age": 35},
    {"id": 5, "name": "Komiljon", "age": 21},
    {"id": 6, "name": "Komila", "age": 45},
    {"id": 7, "name": "Behzod", "age": 30},
    {"id": 8, "name": "Burxon", "age": 14},
    {"id": 9, "name": "Sodiqjon", "age": 35},
    {"id": 10, "name": "Dilmurod", "age": 32},
  ];

  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onTap: () {
                setState(() {
                  _isButton = false;
                });
              },
              onChanged: (value) {
                _runFilter(value);
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Search',
                  suffixIcon: _isButton
                      ? IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search))
                      : IconButton(
                          onPressed: () {}, icon: const Icon(Icons.close))),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) => Card(
                          key: ValueKey(_foundUsers[index]["id"]),
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Card(
                            color: Colors.transparent,
                             elevation: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const  Color(0xffFFFACD),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              height: 200,
                              width: 130,
                              child: ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(_foundUsers[index]["id"].toString()),
                                      Text(_foundUsers[index]["name"].toString()),
                                      Text(_foundUsers[index]["age"].toString()),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Text(
                        'No results found',
                        style: TextStyle(fontSize: 15),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
