import 'package:flutter/material.dart';
import '../model/comment_detail_model.dart';
// 动态详情数据处理
class CommentDetailProvider with ChangeNotifier{
  // 动态详情
  CommentDetail commentDetail;
  // 获取动态详情
  void getCommentDetail(CommentDetail detail){
    commentDetail = detail;
    notifyListeners();
  }
}