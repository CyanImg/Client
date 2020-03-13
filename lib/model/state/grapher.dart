import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entity/grapher.dart';

part 'grapher.g.dart';

@JsonSerializable()
@immutable
class GrapherState{
  final Map<String, GrapherEntity> graphers;
  final Map<String, List<int>> graphersFollowing;
  final Map<String, List<int>> followers;

  GrapherState({
    this.graphers = const {},
    this.graphersFollowing = const {},
    this.followers = const {},
  });

   factory GrapherState.fromJson(Map<String, dynamic> json) =>
    _$GrapherStateFromJson(json);

  Map<String, dynamic> toJson() => _$GrapherStateToJson(this);

    GrapherState copyWith({
      Map<String, GrapherEntity> graphers,
      Map<String, List<int>> graphersFollowing,
      Map<String, List<int>> followers,
    }) =>
        GrapherState(
          graphers: graphers ?? this.graphers,
          graphersFollowing: graphersFollowing ?? this.graphersFollowing,
          followers: followers ?? this.followers,
        );
}