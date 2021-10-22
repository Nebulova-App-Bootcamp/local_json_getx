// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_my_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMyJson _$UserMyJsonFromJson(Map<String, dynamic> json) {
  return UserMyJson(
    (json['users'] as List<dynamic>)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserMyJsonToJson(UserMyJson instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
