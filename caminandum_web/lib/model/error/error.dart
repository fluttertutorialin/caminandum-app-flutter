// To parse this JSON data, do
//
//     final error = errorFromJson(jsonString);

import 'dart:convert';

Error errorFromJson(String str) => Error.fromJson(json.decode(str));

String errorToJson(Error data) => json.encode(data.toJson());

class Error {
  Error({
    this.msg,
    this.warnings,
  });

  String ?msg;
  List<String> ?warnings;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    msg: json["msg"],
    warnings: List<String>.from(json["warnings"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "warnings": List<dynamic>.from(warnings!.map((x) => x)),
  };
}