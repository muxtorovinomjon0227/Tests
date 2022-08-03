import 'package:flutter/material.dart';
import 'package:my_cantroller/movie/wiew/view_model.dart';
import 'package:provider/provider.dart';

class UseProviderPage extends StatefulWidget {
  const UseProviderPage({Key? key}) : super(key: key);

  @override
  State<UseProviderPage> createState() => _UseProviderPageState();
}

class _UseProviderPageState extends State<UseProviderPage> {

  @override
  Widget build(BuildContext context) {
    final _providerWork = Provider.of<MainViewModel>(context,listen: false);
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
           const SizedBox(height: 150),
          Consumer<MainViewModel>(builder: (context, snapshot, child) {
            return Column(
              children: [
                Text(snapshot.counter.toString()),
              ],
            );
          },),
            Center(
              child: IconButton(onPressed: (){
                _providerWork.incrementCounter();

              }, icon: Icon(Icons.add),),
            ),
            Center(
              child: IconButton(onPressed: (){
                _providerWork.incrementCounterRemove();

              }, icon: Icon(Icons.remove),),
            ),

          ],
        ),
      ),
    );
  }
}
