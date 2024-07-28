// ignore_for_file: prefer_const_constructors

import 'package:deneme/providers/textedit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textEditing = Provider.of<TextEditing>(context);
    return Padding(
          padding: const EdgeInsets.only(right: 60,left:10),
          child: TextField(keyboardType: TextInputType.multiline,
          maxLines: null,
          textCapitalization: TextCapitalization.sentences,
           controller:textEditing.controller,
           style: TextStyle(
             color: Colors.white,fontSize: 18),
             decoration: InputDecoration(
    suffixIcon: IconButton(onPressed:(){
      
      textEditing.textAdd();

    },
    icon:Icon(Icons.send,size: 25,color: Colors.white,)),
    isDense: true,
    enabledBorder:OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Colors.white,width: 2)
    ) ,
    focusedBorder:OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Colors.white,width: 2)
    ),hintText: "Say Something",
      hintStyle: TextStyle(color: Colors.grey),
      ),
      ),
      );
  }
}