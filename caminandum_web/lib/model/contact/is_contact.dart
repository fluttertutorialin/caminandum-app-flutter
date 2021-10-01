// To parse this JSON data, do
//
//     final isContact = isContactFromJson(jsonString);

import 'dart:convert';

IsContact isContactFromJson(String str) => IsContact.fromJson(json.decode(str));

String isContactToJson(IsContact data) => json.encode(data.toJson());

class IsContact {
  IsContact({
    this.isContact,
  });

  bool ?isContact;

  factory IsContact.fromJson(Map<String, dynamic> json) => IsContact(
    isContact: json["is_contact"],
  );

  Map<String, dynamic> toJson() => {
    "is_contact": isContact,
  };
}
