// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grapher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrapherEntity _$GrapherEntityFromJson(Map<String, dynamic> json) {
  return GrapherEntity(
      grapherid: json['grapherid'] as int,
      graphername: json['graphername'] as String,
      grapherschool: json['grapherschool'] as String,
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

Map<String, dynamic> _$GrapherEntityToJson(GrapherEntity instance) =>
    <String, dynamic>{
      'grapherid': instance.grapherid,
      'graphername': instance.graphername,
      'grapherschool': instance.grapherschool,
      'pic': instance.pic,
      'email': instance.email,
      'postCount': instance.postCount,
      'likeCount': instance.likeCount,
      'followingCount': instance.followingCount,
      'isFollowing': instance.isFollowing,
      'createdAt': instance.createdAt?.toIso8601String()
    };
