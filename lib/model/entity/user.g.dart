// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return UserEntity(
      userid: json['userid'] as int,
      username: json['username'] as String,
      userschool: json['userschool'] as String,
      pic: json['pic'] as String,
      email: json['email'] as String,
      postCount: json['postCount'] as int,
      likeCount: json['likeCount'] as int,
      followingCount: json['followingCount'] as int,
      isFollowing: json['isFollowing'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String));
}

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'userid': instance.userid,
      'username': instance.username,
      'userschool': instance.userschool,
      'pic': instance.pic,
      'email': instance.email,
      'postCount': instance.postCount,
      'likeCount': instance.likeCount,
      'followingCount': instance.followingCount,
      'isFollowing': instance.isFollowing,
      'createdAt': instance.createdAt?.toIso8601String()
    };
