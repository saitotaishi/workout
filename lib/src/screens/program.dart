
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget{
  const ProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('プログラム'),
      ),
      body: const Center(
        child: Text('プログラム'),
      ),

    );
  }

}