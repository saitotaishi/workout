import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget{
  WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('ワークアウト'),
      ),
      body: const Center(
        child: Text("ワークアウト"),
      ),
    );
  }
}