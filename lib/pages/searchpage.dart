// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:deneme/components/text_widget.dart';
import 'package:deneme/providers/textedit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
   const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade200,
      appBar: AppBar(
        elevation: 1,
      backgroundColor: Colors.deepPurpleAccent.shade400,
        title: Text("Chat Page"),
        centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
            child:Consumer<TextEditing>(builder:(context, textEditing, child) {
              return ListView.builder(itemCount:textEditing.texts.length,itemBuilder:(context,index){
                return textEditing.texts[index];
                }
                );
                },
                ),
                ),
           //TextField is here!!
             TextWidget(),
             ],
             ),
             );
             }
}








