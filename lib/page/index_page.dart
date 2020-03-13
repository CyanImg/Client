import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../page/home_page/home_page.dart';
import '../page/shot_page/shot_page.dart';
import 'add_page.dart';
import 'order_page.dart';
import 'me_page.dart';
class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  //当前页面的索引
  var _currentIndex = 0;

  HomePage homePage;

  ShotPage shotPage;

  AddPage addPage;

  OrderPage orderPage;

  MePage mePage;
  ///根据当前索引返回不同的页面
  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (homePage == null) {
          homePage = HomePage();
        }
        return homePage;
      case 1:
        if (shotPage == null) {
          shotPage = ShotPage();
        }
        return shotPage;
      case 2:
        if (addPage == null) {
          addPage = AddPage();
        }
        return addPage;
      case 3:
        if (OrderPage == null) {
          orderPage = OrderPage();
        }
        return orderPage;
      case 4:
        if (MePage == null) {
          mePage = MePage();
        }
        return mePage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: currentPage(),

    floatingActionButton: Container(
      height: 61,
      width: 61,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(top:8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      child: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            this._currentIndex=2;
          });
        },
        backgroundColor: Colors.black,
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    bottomNavigationBar: BottomNavigationBar(
        //通过fixedColor设置选中item的颜色
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),

    items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt),title: Text('摄影圈')),
        BottomNavigationBarItem(icon: Icon(Icons.add),title: Text('发布')),
        BottomNavigationBarItem(icon: Icon(Icons.reorder),title: Text('订单')),
        BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('我的')),
    ],
      ),
    );
  }
}