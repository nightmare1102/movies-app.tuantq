import 'package:json_annotation/json_annotation.dart';

part 'user.remote.g.dart';

@JsonSerializable()
class User {
  final String id;

  final String email;

  final String avatarUrl;

  final String phoneNumber;

  final String name;

  User({
    required this.id,
    required this.email,
    required this.avatarUrl,
    required this.phoneNumber,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
