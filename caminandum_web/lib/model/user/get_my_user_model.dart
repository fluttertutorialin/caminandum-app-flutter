// To parse this JSON data, do
//
//     final getMyUserModel = getMyUserModelFromJson(jsonString);

import 'dart:convert';

GetMyUserModel getMyUserModelFromJson(String str) => GetMyUserModel.fromJson(json.decode(str));

String getMyUserModelToJson(GetMyUserModel data) => json.encode(data.toJson());

class GetMyUserModel {
  GetMyUserModel({
    this.isMe,
    this.isYou,
    this.user,
  });

  bool ?isMe;
  bool ?isYou;
  User ?user;

  factory GetMyUserModel.fromJson(Map<String, dynamic> json) => GetMyUserModel(
    isMe: json["is_me"],
    isYou: json["is_you"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "is_me": isMe,
    "is_you": isYou,
    "user": user!.toJson(),
  };
}

class User {
  User();

  factory User.fromJson(Map<String, dynamic> json) => User(
  );

  Map<String, dynamic> toJson() => {
  };
}
