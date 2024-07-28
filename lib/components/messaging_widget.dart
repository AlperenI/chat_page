// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MessageBubbleWidget extends StatelessWidget {
  final String text;
   MessageBubbleWidget({
    super.key, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(padding: EdgeInsets.only(left: 5,top: 5,right: 5),margin: EdgeInsets.all(1),constraints: BoxConstraints(minHeight: 50,maxWidth: 300,minWidth: 50),decoration: BoxDecoration(color: Color.fromARGB(255, 94, 180, 110),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10)),
          child: Text(text,softWrap:true,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
        ),
      ],
    );
  }
}