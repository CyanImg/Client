import 'package:flutter/material.dart';
import 'loading.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import './provider/current_index_provider.dart';
import './provider/comment_provider.dart';
import './provider/comment_detail_provider.dart';
import './router/application.dart';
import './router/routes.dart';

// 程序入口
void main() => runApp(MyApp());
// 应用主程序
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 实例化路由
    final router = Router();
    // 配置路由
    Routes.configureRoutes(router);
    // 将路由设置成整个应用可以调用
    Application.router = router;

    // 管理多个共享数据类
    return MultiProvider(
      providers: [
        // 底部导航页面切换
        ChangeNotifierProvider(builder: (_) => CurrentIndexProvider(), create: (BuildContext context) {},),
        // 获取动态数据
        ChangeNotifierProvider(builder: (_) => CommentProvider(), create: (BuildContext context) {},),
        // 获取动态详情数据
        ChangeNotifierProvider(builder: (_) => CommentDetailProvider(), create: (BuildContext context) {},),
        // WebSocket连接及收发消息
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '青影之家APP',
        // 自定义主题
        theme: mDefaultTheme,
        // 生成路由的回调函数，当导航到目标路由的时候，会使用这个来生成界面
        onGenerateRoute: Application.router.generator,
        // 指定加载页面
        home: LoadingPage(),
      ),
    );
  }
}
// 自定义主题
final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.black,
);
