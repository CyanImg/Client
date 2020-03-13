import 'package:flutter/material.dart';
import 'dart:async';
import './router/application.dart';
// 启动App加载页面
class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // 在加载页面停顿2秒
    Future.delayed(Duration(seconds: 2), () {
      print('青影之家APP启动...');
      // 使用路由跳转至应用主界面
      Application.router.navigateTo(context, "/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset('assets/images/1.png'
            ),
            Center(
              child: Text(
            '青影之家APP\n青年人专属的摄影兼职平台',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.white,
              fontSize: 33.0,
              decoration: TextDecoration.none,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}