import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:flutter_html/flutter_html.dart';
import '../model/comment_detail_model.dart';
import '../service/http_service.dart';
import '../provider/comment_detail_provider.dart';
import '../conf/configure.dart';

// 动态详情页面
class CommentDetailPage extends StatefulWidget {
  // 传入动态Id
  final String commentId;

  CommentDetailPage(this.commentId);

  @override
  CommentDetailPageState createState() => CommentDetailPageState();
}

class CommentDetailPageState extends State<CommentDetailPage> {
  @override
  void initState() {
    super.initState();
    // 获取动态详情
    getCommentDetail();
  }
  // 获取动态详情
  void getCommentDetail() async {
    // 请求url
    var url = 'http:// ' + Config.IP + ':' + Config.PORT + '/getCommentDetail';
    // 请求参数动态Id
    var formData = {"commentId": widget.commentId};
    print(widget.commentId);
    // 调用请求方法传入url及表单数据
    await request(url, formData: formData).then((value) {
      var data = json.decode(value.toString());
      // 打印数据
      print('动态详情数据Json格式:::' + data.toString());
      // 将Json数据转换成CommentDetailModel
      CommentDetailModel commentDetailData = CommentDetailModel.fromJson(data);
      // 设置CommentDetailProvider里的动态详情数据
      if (commentDetailData.data != null) {
        Provider.of<CommentDetailProvider>(context).getCommentDetail(commentDetailData.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 根据Consumer获取CommentDetailProvider对象
    return Consumer<CommentDetailProvider>(builder: (BuildContext context, CommentDetailProvider commentProvider, Widget child) {
      // 获取动态详情数据
      CommentDetail detail = commentProvider.commentDetail;
      if (detail != null) {
        return Scaffold(
          appBar: AppBar(
            title: Text('动态详情'),
          ),
          // 使用ListView可以使动态图片滚动
          body: ListView(
            children: <Widget>[
              // 展示Html数据
              Html(
                data: detail.orderUrl,
              ),
            ],
          ),
        );
      } else {
        return Scaffold(
            appBar: AppBar(
              title: Text('动态详情'),
            ),
            body: Center());
      }
    });
  }
}
