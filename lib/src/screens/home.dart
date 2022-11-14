import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout/src/screens/addprogram.dart';
import 'package:workout/src/screens/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<MyHomePage> {
  late int _count;
  final key = "count_key";

  @override
  void initState() {
    //画面の初期化時に値を読み込む
    super.initState();
    _readCount();
  }

  void _readCount() async {
    //SharedPreferencesオブジェクトの取得
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      //端末に保存されているcountを取得する。
      _count = prefs.getInt(key) ?? 0;
    });
  }

  void _saveCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      //端末に保存
      _count = _count + 1;
      prefs.setInt(key, _count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile(),
                  ));
            },
            child: Container(
              child:
                  Text('profile image', style: TextStyle(color: Colors.black)),
              alignment: Alignment.center,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => addprogram(),
                    ));
              },
            )
          ]),
      body: Container(
        alignment: const Alignment(-1, -0.95),
        width: double.infinity,
        height: 900,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // テキストを等間隔で並べる
          children: [
            Text(
              "今日のトレーニング",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //ここに画像を並べていく
                Container(
                    height: 150,
                    width: 150,
                    color: Colors.grey,
                    child: const Text("トレーニング動画を配置")),
                Container(
                    height: 150,
                    width: 150,
                    color: Colors.brown,
                    child: const Text("トレーニング動画を配置")),
              ],
            ),
            Column(
              children: [
                SizedBox(child: Text("カウンター")),
                Container(
                  width: 300,
                  height: 300,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  child: ElevatedButton(
                      child: Text('ここをタップ！！'),
                      onPressed: _saveCount, //_incrementCounter,  から変更
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        foregroundColor: Colors.blue,
                        shape: CircleBorder(),
                      )),
                ),
                Container(child: Text('$_count' + '日')), //$_counterから変更
              ],
            ),
          ],
        ),
      ),
    );
  }
}
