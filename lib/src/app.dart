import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout/src/screens/activity.dart';
import 'package:workout/src/screens/home.dart';
import 'package:workout/src/screens/program.dart';
import 'package:workout/src/screens/workout.dart';


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) :super(key:key);
  //const MyApp({super.key});
  @override
  Widget build(BuildContext context){
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),


    home: const MyStatefulWidget(),

   ) ;
  }
}


class MyStatefulWidget extends StatefulWidget{
  const MyStatefulWidget({Key? key}) :super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static var _screens = [
   MyHomePage(title: 'Flutter Demo'),
    WorkoutScreen(),
    ActivityScreen(),
    ProgramScreen()
  ];// 他ページのクラス名を変更しなければ。。。
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState((){
      _selectedIndex =index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'home'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center),label:'workout'),
          BottomNavigationBarItem(icon: Icon(Icons.signal_cellular_alt),label:'記録'),
          BottomNavigationBarItem(icon: Icon(Icons.event_available),label:'プログラム'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

