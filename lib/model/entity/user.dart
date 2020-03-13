import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
@immutable
class UserEntity{
  final int userid;
  final String username;
  final String userschool;
  final String pic;
  final String email;
  final int postCount;
  final int likeCount;
  final int followingCount;
  final bool isFollowing;
  final DateTime createdAt;

  UserEntity({
    this.userid = 0,
    this.username = '',
    this.userschool = '',
    this.pic = '',
    this.email = '',
    this.postCount = 0,
    this.likeCount = 0,
    this.followingCount = 0,
    this.isFollowing = false,
    DateTime createdAt,
  }) : this.createdAt = createdAt ?? DateTime.now(); 

    factory UserEntity.fromJson(Map<String, dynamic> json) => 
    _$UserEntityFromJson(json);

    Map<String, dynamic> toJson() => _$UserEntityToJson(this);

    UserEntity copyWith({
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
        UserEntity(
          userid: userid ?? this.userid,
          username: username ?? this.username,
          userschool: userschool ?? this.userschool,
          pic: pic ?? this.pic,
          email: email ?? this.email,
          postCount: postCount ?? this.postCount,
          likeCount: likeCount ?? this.likeCount,
          followingCount: followingCount ?? this.followingCount,
          isFollowing: isFollowing ?? this.isFollowing,
          createdAt: createdAt ?? this.createdAt,
         );
}