import '../entity/post.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

import '../models.dart';

part 'publish.g.dart';

@JsonSerializable()
@immutable
class PublishState{
  final PostType type;
  final String text;
  final List<String> images;

  PublishState({
    this.type = PostType.image,
    this.text = '',
    this.images = const [],
  });

   factory PublishState.fromJson(Map<String, dynamic> json) =>
    _$PublishStateFromJson(json);

  Map<String, dynamic> toJson() => _$PublishStateToJson(this);

    PublishState copyWith({
        PostType type,
        String text,
        List<String> images,
    }) =>
        PublishState(
          type: type ?? this.type,
          text: text ?? this.text,
          images: images ?? this.images,
        );
}