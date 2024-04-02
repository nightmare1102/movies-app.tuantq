// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.remote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      email: json['email'] as String,
      avatarUrl: json['avatarUrl'] as String,
      phoneNumber: json['phoneNumber'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
    };
