// ignore_for_file: non_constant_identifier_names
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String avatar_url;
  final String html_url;
  final String node_id;

  User({
    required this.id,
    required this.avatar_url,
    required this.html_url,
    required this.node_id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
