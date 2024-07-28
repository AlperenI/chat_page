// ignore_for_file: prefer_final_fields

import 'package:deneme/components/messaging_widget.dart';
import 'package:flutter/material.dart';

class TextEditing extends ChangeNotifier{
  TextEditingController _controller=TextEditingController();
  TextEditingController get controller=>_controller;

    List<Widget> _texts=[];
    List<Widget> get texts=>_texts;
  void textAdd(){
    if (_controller.text.trim().isNotEmpty) {
    _texts.add(MessageBubbleWidget(text: _controller.text,));
    _controller.clear();
    notifyListeners();
    }
  }
}