import 'package:deneme/providers/increment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Center(child: Text("Count is ${Provider.of<Increment>(context).count}"),),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,shape:CircleBorder(),onPressed: (){
        Provider.of<Increment>(context,listen:false).increment();
      },child: Icon(Icons.add,color: Colors.white,),),
    );
  }
}