// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deneme/providers/changepage.dart';

import 'package:deneme/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[Provider.of<ChangePage>(context).indexIs],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,currentIndex:Provider.of<ChangePage>(context).indexIs,
        onTap:(index){
          Provider.of<ChangePage>(context,listen: false).pageChange(index);
        },
        items:[
        BottomNavigationBarItem(label:"home",icon: Icon(Icons.home),),
        BottomNavigationBarItem(label:"search",icon: Icon(Icons.search),),
        BottomNavigationBarItem(label:"settings",icon: Icon(Icons.settings),),
        BottomNavigationBarItem(label:"profile",icon: Icon(Icons.account_circle_outlined),),
      ]),
    );
  }
}