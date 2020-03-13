// 动态列表数据模型
class CommentListModel{
  // 状态码
  String code;
  // 状态信息
  String message;
  // 动态列表数据
  List<CommentModel> data;

  // 构造方法，初始化时传入空数组[]即可
  CommentListModel(this.data);

  // 通过传入Json数据转换成数据模型
  CommentListModel.fromJson(Map<String,dynamic> json){
    code = json['code'];
    message = json['message'];
    if(json['data'] != null){
      data = List<CommentModel>();
      // 循环迭代Json数据并将其每一项数据转换成CommentModel
      json['data'].forEach((v){
        data.add(CommentModel.fromJson(v));
      });
    }
  }

  // 将数据模型转换成Json
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if(this.data != null){
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }

}

// 动态数据模型
class CommentModel{
  String graphername;     // 摄影师名称
  String username;        // 用户名称
  String grapherschool;   // 摄影师高校
  String type;            // 服务描述
  String imageUrl;        // 动态图片路径
  int grapherid;          // 摄影师id

  // 构造方法
  CommentModel({this.graphername,this.username,this.type,this.grapherschool,this.imageUrl,this.grapherid});

  // 通过传入Json数据转换成数据模型
  CommentModel.fromJson(Map<String,dynamic> json){
    graphername = json['graphername'];
    username = json['username'];
    type = json['type'];
    grapherschool = json['grapherschool'];
    imageUrl = json['imageUrl'];
    grapherid = json['grapherid'];
  }

  // 将数据模型转换成Json
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['graphername'] = this.graphername;
    data['username'] = this.username;
    data['type'] = this.type;
    data['grapherschool'] = this.grapherschool;
    data['imageUrl'] = this.imageUrl;
    data['grapherid'] = this.grapherid; 
    return data;
  }

}
