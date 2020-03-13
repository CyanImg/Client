import 'package:flutter/material.dart';
import '../model/comment.dart';
// 产品数据处理
class CommentProvider with ChangeNotifier{
  // 产品列表数据
  List<CommentModel> commentList = [];
  // 获取产品列表数据
  getCommentList(List<CommentModel> list){
    commentList = list;
    notifyListeners();
  }
  // 上拉加载列表，追加列表数据
  addCommentList(List<CommentModel> list){
    commentList.addAll(list);
    notifyListeners();
  }
}