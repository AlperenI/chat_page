import 'package:flutter/material.dart';

class ChangePage extends ChangeNotifier{
  int indexIs=0;
   pageChange(index){
  if (index!=indexIs) {
    indexIs=index;
    print(indexIs);
    notifyListeners();
}
  }
}