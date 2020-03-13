import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'grapher.g.dart';

@JsonSerializable()
@immutable
class GrapherEntity{
  final int grapherid;
  final String graphername;
  final String grapherschool;
  final String pic;
  final String email;
  final int postCount;
  final int likeCount;
  final int followingCount;
  final bool isFollowing;
  final DateTime createdAt;

  GrapherEntity({
    this.grapherid = 0,
    this.graphername = '',
    this.grapherschool = '',
    this.pic = '',
    this.email = '',
    this.postCount = 0,
    this.likeCount = 0,
    this.followingCount = 0,
    this.isFollowing = false,
    DateTime createdAt,
  }) : this.createdAt = createdAt ?? DateTime.now(); 

    factory GrapherEntity.fromJson(Map<String, dynamic> json) => 
    _$GrapherEntityFromJson(json);

    Map<String, dynamic> toJson() => _$GrapherEntityToJson(this);

    GrapherEntity copyWith({
        int userid,
        String username,
        String userschool,
        String pic,
        String email,
        int postCount,
        int likeCount,
        int followingCount,
        bool isFollowing,
        DateTime createdAt,
    }) =>
        GrapherEntity(
          grapherid: userid ?? this.grapherid,
          graphername: username ?? this.graphername,
          grapherschool: userschool ?? this.grapherschool,
          pic: pic ?? this.pic,
          email: email ?? this.email,
          postCount: postCount ?? this.postCount,
          likeCount: likeCount ?? this.likeCount,
          followingCount: followingCount ?? this.followingCount,
          isFollowing: isFollowing ?? this.isFollowing,
          createdAt: createdAt ?? this.createdAt,
         );
}