// To parse this JSON data, do
//
//     final error = errorFromJson(jsonString);

import 'dart:convert';

ResMessage errorFromJson(String str) => ResMessage.fromJson(json.decode(str));

String errorToJson(ResMessage data) => json.encode(data.toJson());

class ResMessage {
  ResMessage({
    this.msg,
    this.warnings,
  });

  String ?msg;
  List<String> ?warnings;

  factory ResMessage.fromJson(Map<String, dynamic> json) => ResMessage(
    msg: json["msg"],
    warnings: List<String>.from(json["warnings"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "warnings": List<dynamic>.from(warnings!.map((x) => x)),
  };
}