
// ignore_for_file: prefer_const_constructors

import 'package:deneme/mainpage.dart';
import 'package:deneme/providers/changepage.dart';
import 'package:deneme/providers/increment.dart';
import 'package:deneme/providers/textedit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(providers:[
    ChangeNotifierProvider(create:(context) => Increment(),),
    ChangeNotifierProvider(create:(context) => ChangePage(),),
    ChangeNotifierProvider(create:(context) => TextEditing(),),
  ],
child: MyApp(),
  )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}