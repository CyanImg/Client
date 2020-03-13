import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cyanimg/page/index_page.dart';
import '../page/comment_detail_page.dart';

// 根路由Handler返回IndexPage页面
Handler rootHandler = Handler(
    handlerFunc: (BuildContext context,Map<String,List<String>> params){
      return IndexPage();
    }
);
// 动态路由Handler返回动态详情页面，传入commentId参数
Handler detailsHandler = Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // 获取commentId产数
    String commentId = params['commentId'].first;
    // 实例化动态详情页面并返回
    return CommentDetailPage(commentId);
  }
);