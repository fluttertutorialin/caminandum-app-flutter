// To parse this JSON data, do
//
//     final sendContactReq = sendContactReqFromJson(jsonString);

import 'dart:convert';

SendContactReq sendContactReqFromJson(String str) => SendContactReq.fromJson(json.decode(str));

String sendContactReqToJson(SendContactReq data) => json.encode(data.toJson());

class SendContactReq {
  SendContactReq({
    this.note,
    this.userId,
    this.validationHash,
  });

  String ?note;
  String ?userId;
  String ?validationHash;

  factory SendContactReq.fromJson(Map<String, dynamic> json) => SendContactReq(
    note: json["note"],
    userId: json["user_id"],
    validationHash: json["validation_hash"],
  );

  Map<String, dynamic> toJson() => {
    "note": note,
    "user_id": userId,
    "validation_hash": validationHash,
  };
}
