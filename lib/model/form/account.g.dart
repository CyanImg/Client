// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterForm _$RegisterFormFromJson(Map<String, dynamic> json) {
  return RegisterForm(
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String);
}

Map<String, dynamic> _$RegisterFormToJson(RegisterForm instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email
    };

LoginForm _$LoginFormFromJson(Map<String, dynamic> json) {
  return LoginForm(
      username: json['username'] as String,
      password: json['password'] as String);
}

Map<String, dynamic> _$LoginFormToJson(LoginForm instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password
    };

ProfileForm _$ProfileFormFromJson(Map<String, dynamic> json) {
  return ProfileForm(
      username: json['username'] as String,
      password: json['password'] as String,
      pic: json['pic'] as String,
      email: json['email'] as String,
      code: json['code'] as String);
}

Map<String, dynamic> _$ProfileFormToJson(ProfileForm instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'pic': instance.pic,
      'email': instance.email,
      'code': instance.code
    };
