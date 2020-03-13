import 'package:flutter/material.dart';
import 'home_banner.dart';
import 'home_comment_page.dart';
// 首页由轮播图及最新动态组成
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('青影之家',
        style: TextStyle(
              color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.home),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          // 轮播图
          BannerWidget(),
          // 最新动态
          HomeCommentPage(),
        ],
      ),
    );
  }
}
