import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

import 'image.dart';

part 'post.g.dart';

enum PostType { all , text , image }

@JsonSerializable()
@immutable
class PostEntity{
  static final typeNames = {
    PostType.all : '全部',
    PostType.text : '文字',
    PostType.image : '图片',
  };
  final int userid;
  final int grapherid;
  final PostType type;
  final String text;
  final List<PostImage> images;
  final int likeCount;
  final bool isLiked;
  final String grapherschool;
  final DateTime createdAt;

  PostEntity({
    this.userid = 0,
    this.grapherid = 0,
    this.type = PostType.text,
    this.text = '',
    this.images = const [],
    this.likeCount = 0,
    this.isLiked = false,
    this.grapherschool = '',
    DateTime createdAt,
  }) : this.createdAt = createdAt ?? DateTime.now();

  String get typeDesc{
    return typeNames[type] ?? '';
  }

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
    _$PostEntityFromJson(json);

    Map<String, dynamic> toJson() => _$PostEntityToJson(this);

    PostEntity copyWith({
      int userid,
      int grapherid,
      PostType type,
      String text,
      List<PostImage> images,
      int likeCount,
      bool isLiked,
      String grapherschool,
      DateTime createdAt,
    }) =>
        PostEntity(
          userid: userid ?? this.userid,
          grapherid: grapherid ?? this.grapherid,
          type : type ?? this.type,
          images: images ?? this.images,
          likeCount: likeCount ?? this.likeCount,
          isLiked: isLiked ?? this.isLiked,
          grapherschool: grapherschool ?? this.grapherschool,
          createdAt: createdAt ?? this.createdAt,
         );
}

@JsonSerializable()
@immutable
class PostImage{
  final ImageEntity original;
  final ImageEntity like;

  PostImage({
    this.original = const ImageEntity(),
    this.like = const ImageEntity(),
  });

    factory PostImage.fromJson(Map<String, dynamic> json) =>
    _$PostImageFromJson(json);

    Map<String, dynamic> toJson() => _$PostImageToJson(this);

}