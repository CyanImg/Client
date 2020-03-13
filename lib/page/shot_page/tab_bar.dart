import 'package:flutter/material.dart';

class ShotBarPage extends StatelessWidget {
  const ShotBarPage({Key key}) : super (key:key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black12,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 500,
                    tabs: <Widget>[
                      Tab(text: "同城摄影师"),
                      Tab(text: "同城约拍"),
                      ],
                  ),
                )
              ],
            ),
          ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
             ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
             ],
            ),
          ],
        ),
      ),
    );
  }
}