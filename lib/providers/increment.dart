import 'package:flutter/material.dart';

class Increment extends ChangeNotifier {
  int count=0;
  void increment(){
    count++;
    notifyListeners();
  }
}
