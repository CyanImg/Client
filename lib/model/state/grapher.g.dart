// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grapher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrapherState _$GrapherStateFromJson(Map<String, dynamic> json) {
  return GrapherState(
      graphers: (json['graphers'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(
            k,
            e == null
                ? null
                : GrapherEntity.fromJson(e as Map<String, dynamic>)),
      ),
      graphersFollowing:
          (json['graphersFollowing'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, (e as List)?.map((e) => e as int)?.toList()),
      ),
      followers: (json['followers'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, (e as List)?.map((e) => e as int)?.toList()),
      ));
}

Map<String, dynamic> _$GrapherStateToJson(GrapherState instance) =>
    <String, dynamic>{
      'graphers': instance.graphers,
      'graphersFollowing': instance.graphersFollowing,
      'followers': instance.followers
    };
