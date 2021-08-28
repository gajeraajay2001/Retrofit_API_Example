import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String email;
  final String gender;
  final String status;
  final String created_at;
  final String updated_at;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.created_at,
    required this.updated_at,
    required this.status,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class ResponseData {
  final int code;
  final dynamic meta;
  final List<dynamic> data;

  ResponseData({required this.code, required this.meta, required this.data});

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
