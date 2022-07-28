import 'package:flutter/material.dart';
import 'package:my_cantroller/movie/base_service/api_response.dart';
import 'package:my_cantroller/movie/wiew/view_model.dart';
import 'package:provider/provider.dart';

class HomePage2 extends StatefulWidget {
  const  HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  void initState() {
    super.initState();
    Provider.of<MainViewModel>(context, listen: false).fetPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MainViewModel>(
        builder: (context, data, child) {
          if (data.response.status == Status.LOADING) {
            return const CircularProgressIndicator();
          }
          if (data.response.status == Status.ERROR) {
            return Center(
              child: Column(
                children: const [
                 Text("Nimadir hato bo'ladi"),
                ],
              ),
            );
          }
          if (data.response.status == Status.INITIAL) {
            return const CircularProgressIndicator();
          }
          if (data.response.status == Status.COMPLENTED) {
            return ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Text(data.movies[index].title.toString() ?? "---");
                },
            );
          }
          return Container();
        },
      ),
    );
  }
}
