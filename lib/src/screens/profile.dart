import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Colors.transparent,
       automaticallyImplyLeading: false,
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.close),
           color: Colors.black,
           onPressed: () => Navigator.of(context).pop(),
           iconSize: 40,
         )],
       ),
    );
  }
}