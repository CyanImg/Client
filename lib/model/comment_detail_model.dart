// 动态详情返回数据模型
class CommentDetailModel{
  // 状态码
  String code;
  // 状态信息
  String message;
  // 动态详情数据
  CommentDetail data;

  // 构造方法，初始化时可传入空数组[]
  CommentDetailModel(this.data);

  // 通过传入Json数据转换成数据模型
  CommentDetailModel.fromJson(Map<String,dynamic> json){
    code = json['code'];
    message = json['message'];
    if(json['data'] != null){
      data = CommentDetail.fromJson(json['data']);
    }
  }

  // 将数据模型转换成Json
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if(this.data != null){
      data['data'] = this.data.toJson();
    }
    return data;
  }

}

// 动态详情数据模型
class CommentDetail{
  String grapherId;        // 摄影师id
  String grapherschool;    // 摄影师所在高校
  String graphername;      // 摄影师昵称
  String type;             // 服务描述
  String orderUrl;         // 下单路径
  String comment;          // 摄影师动态
  int followerNum;         // 关注数
  String star;             // 星级
  String imageUrl;         // 图片路径
  // 构造方法
  CommentDetail({this.grapherId,this.grapherschool,this.type,this.graphername,this.orderUrl,this.comment,this.followerNum,this.star});

  // 通过传入Json数据转换成数据模型
  CommentDetail.fromJson(Map<String,dynamic> json){
    grapherId = json['grapherId'];
    grapherschool = json['grapherschool'];
    type = json['type'];
    graphername = json['graphername'];
    orderUrl = json['orderUrl'];
    comment = json['comment'];
    followerNum = json['followerNum'];
    star = json['star'];
    imageUrl = json['imageUrl'];
  }

  // 将数据模型转换成Json
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['grapherId'] = this.grapherId;
    data['grapherschool'] = this.grapherschool;
    data['type'] = this.type;
    data['graphername'] = this.graphername;
    data['orderUrl'] = this.orderUrl;
    data['comment'] = this.comment;
    data['followerNum'] = this.followerNum;
    data['star'] = this.star;
    data['imageUrl'] = this.imageUrl;
    return data;
  }

}
