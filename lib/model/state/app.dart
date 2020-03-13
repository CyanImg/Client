import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:cyanimg/conf/config.dart';
import 'account.dart';
import 'grapher.dart';
import 'publish.dart';
import 'post.dart';
import 'user.dart';

part 'app.g.dart';

@JsonSerializable()
@immutable
class AppState{
  final String version;
  final AccountState account;
  final GrapherState grapher;
  final PublishState publish;
  final PostState post;
  final UserState user;

  AppState({
    String version,
    AccountState account,
    GrapherState grapher,
    PublishState publish,
    PostState post,
    UserState user,
  }) : this.version = version ?? CyanConfig.packageInfo.version,
       this.account = account ?? AccountState(),
       this.grapher = grapher ?? GrapherState(),
       this.post = post ?? PostState(),
       this.publish = publish ?? PublishState(),
       this.user = user ?? UserState();
  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  AppState copyWith({
    String version,
    AccountState account,
    GrapherState grapher,
    PublishState publish,
    PostState post,
    UserState user,
  }) =>
      AppState(
        version: version ?? this.version,
        account: account ?? this.account,
        grapher: grapher ?? this.grapher,
        publish: publish ?? this.publish,
        post: post ?? this.post,
        user: user ?? this.user,
      );

}