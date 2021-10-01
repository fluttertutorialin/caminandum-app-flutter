// To parse this JSON data, do
//
//     final directContactRequest = directContactRequestFromJson(jsonString);

import 'dart:convert';

DirectContactRequest directContactRequestFromJson(String str) => DirectContactRequest.fromJson(json.decode(str));

String directContactRequestToJson(DirectContactRequest data) => json.encode(data.toJson());

class DirectContactRequest {
  DirectContactRequest({
    this.note,
    this.userId,
    this.validationHash,
  });

  String ?note;
  String ?userId;
  String ?validationHash;

  factory DirectContactRequest.fromJson(Map<String, dynamic> json) => DirectContactRequest(
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
