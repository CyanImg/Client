import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import '../../model/comment.dart';
import '../../utils/utils.dart';
import '../../provider/comment_provider.dart';
import '../../service/http_service.dart';
import '../../router/application.dart';
import '../../conf/configure.dart';
// 首页最新产品页面
class HomeCommentPage extends StatefulWidget {
  @override
  HomeCommentPageState createState() => HomeCommentPageState();
}

class HomeCommentPageState extends State<HomeCommentPage> {
  @override
  void initState() {
    super.initState();
    // 获取动态数据
    getCommentList();
  }
  // 获取动态数据
  void getCommentList() async {
    // 请求url
    var url = 'http:// ' + Config.IP + ':' + Config.PORT + '/getComments';
    // 请求参数
    var formData = {};
    // 调用请求方法传入url及表单数据
    await request(url, formData: formData).then((value) {
      // Json解码，value为服务端返回的数据
      var data = json.decode(value.toString());
      // 打印数据
      print('动态列表数据Json格式:::' + data.toString());
      // 将Json数据转换成CommentListModel
      CommentListModel commentList = CommentListModel.fromJson(data);
      // 将返回的数据放入CommentProvider
      if (commentList.data == null) {
        Provider.of<CommentProvider>(context).getCommentList([]);
      } else {
        Provider.of<CommentProvider>(context).getCommentList(commentList.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 设备宽度
    double deviceWidth = MediaQuery.of(context).size.width;
    // 使用Consumer获取CommentProvider对象
    return Consumer<CommentProvider>(builder: (BuildContext context, CommentProvider 
commentProvider, Widget child) {
      // 获取动态列表数据
      List<CommentModel> commentList = commentProvider.commentList;
      return Container(
        width: deviceWidth,
        color: Colors.white,
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 7.5),
        child: buildCommentList(context, deviceWidth, commentList),
      );
    });
  }

  // 返回标题及列表
  Widget buildCommentList(BuildContext context, double deviceWidth, List
<CommentModel> commentList) {
    // Item宽度
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth = deviceWidth * 110.0 / 360;

    // 返回动态列表
    List<Widget> listWidgets = commentList.map((item) {
      var bgColor = string2Color('#f8f8f8');
      Color titleColor = string2Color('#db5d41');
      Color subtitleColor = string2Color('#999999');
      // 返回动态列表
      return InkWell(
        onTap: () {
          // 路由跳转至动态详情页
          Application.router.navigateTo(context, "/detail?commentId=${item.grapherid}");
        },
        // 动态内容展示容器
        child: Container(
          width: itemWidth,
          margin: EdgeInsets.only(bottom: 5, left: 2),
          padding: EdgeInsets.only(top: 10, left: 13, bottom: 7),
          color: bgColor,
          // 垂直布局
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 动态发布者名称
              Text(
                item.username,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: titleColor),
              ),
              // 摄影师名称
              Text(
                item.graphername,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: subtitleColor),
              ),
              //摄影师高校
               Text(
                item.grapherschool,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: subtitleColor),
              ),
              // 动态图片
              Container(
                alignment: Alignment(0, 0),
                margin: EdgeInsets.only(top: 5),
                child: Image.network(
                  item.imageUrl,
                  width: imageWidth,
                  height: imageWidth,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();

    // 标题及动态列表
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5, bottom: 10),
          child: Text(
            '最新动态',
            style: TextStyle(
              fontSize: 16.0,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ),
        ),
        // 流式布局列表
        Wrap(
          spacing: 2,
          children: listWidgets,
        ),
      ],
    );
  }
}