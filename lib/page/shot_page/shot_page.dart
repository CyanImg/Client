import 'package:flutter/material.dart';
import 'tab_bar.dart';
class ShotPage extends StatefulWidget {
  @override
  _ShotPageState createState() => _ShotPageState();
}

class _ShotPageState extends State<ShotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('摄影圈',
            style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: Icon(Icons.camera_alt),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
           onPressed: (){
             print('search');
           },
          ),
          IconButton(
           icon: Icon(Icons.local_grocery_store),
           onPressed: (){
             print('shopping');
           },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          // 同城摄影师
          
          // 插件
          ShotBarPage(),
        ],
      ),
    );
  }
}
