import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget{
  ActivityScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("アクティビティ"),
      ),
      body: const Center(
        child: Text('アクティビティ画面'),
      ),

    );
  }
}