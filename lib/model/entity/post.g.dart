// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostEntity _$PostEntityFromJson(Map<String, dynamic> json) {
  return PostEntity(
      userid: json['userid'] as int,
      grapherid: json['grapherid'] as int,
      type: _$enumDecodeNullable(_$PostTypeEnumMap, json['type']),
      text: json['text'] as String,
      images: (json['images'] as List)
          ?.map((e) =>
              e == null ? null : PostImage.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      likeCount: json['likeCount'] as int,
      isLiked: json['isLiked'] as bool,
      grapherschool: json['grapherschool'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String));
}

Map<String, dynamic> _$PostEntityToJson(PostEntity instance) =>
    <String, dynamic>{
      'userid': instance.userid,
      'grapherid': instance.grapherid,
      'type': _$PostTypeEnumMap[instance.type],
      'text': instance.text,
      'images': instance.images,
      'likeCount': instance.likeCount,
      'isLiked': instance.isLiked,
      'grapherschool': instance.grapherschool,
      'createdAt': instance.createdAt?.toIso8601String()
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$PostTypeEnumMap = <PostType, dynamic>{
  PostType.all: 'all',
  PostType.text: 'text',
  PostType.image: 'image'
};

PostImage _$PostImageFromJson(Map<String, dynamic> json) {
  return PostImage(
      original: json['original'] == null
          ? null
          : ImageEntity.fromJson(json['original'] as Map<String, dynamic>),
      like: json['like'] == null
          ? null
          : ImageEntity.fromJson(json['like'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PostImageToJson(PostImage instance) =>
    <String, dynamic>{'original': instance.original, 'like': instance.like};
