import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
// 首页轮播图组件
class BannerWidget extends StatelessWidget{
  // 图片路径
  List<String> banners = <String>[
    'assets/images/banners/1.png',
    'assets/images/banners/2.png',
    'assets/images/banners/3.png',
    'assets/images/banners/4.png',
  ];

  @override
  Widget build(BuildContext context) {
    // 计算宽高（按比例）
    double width = MediaQuery.of(context).size.width;
    double height = width * 540.0 / 1080.0;
    return Container(
      width: width,
      height: height,
      // 轮播组件
      child: Swiper(
        // 轮播项构建器
        itemBuilder: (BuildContext context, index){
          return Container(
            // 图片左右内边距
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Image.asset(
              // 根据索引获取图片
              banners[index],
              width: width,
              height: height,
              // 指定填充模式
              fit: BoxFit.cover,
            ),
          );
        },
        // 轮播数量
        itemCount: banners.length,
        // 方向
        scrollDirection: Axis.horizontal,
        // 是否自动播放
        autoplay: true,
        //小图标
        pagination: SwiperPagination(),
      ),
    );
  }
}