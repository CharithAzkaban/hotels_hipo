// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      avatar_url: json['avatar_url'] as String,
      html_url: json['html_url'] as String,
      node_id: json['node_id'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatar_url,
      'html_url': instance.html_url,
      'node_id': instance.node_id,
    };
