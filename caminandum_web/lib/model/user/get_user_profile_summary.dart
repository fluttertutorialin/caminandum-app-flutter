// To parse this JSON data, do
//
//     final getUserProfileSummary = getUserProfileSummaryFromJson(jsonString);

import 'dart:convert';

GetUserProfileSummary getUserProfileSummaryFromJson(String str) => GetUserProfileSummary.fromJson(json.decode(str));

String getUserProfileSummaryToJson(GetUserProfileSummary data) => json.encode(data.toJson());

class GetUserProfileSummary {
  GetUserProfileSummary({
    this.additionalProp1,
  });

  AdditionalProp1 ?additionalProp1;

  factory GetUserProfileSummary.fromJson(Map<String, dynamic> json) => GetUserProfileSummary(
    additionalProp1: AdditionalProp1.fromJson(json["additionalProp1"]),
  );

  Map<String, dynamic> toJson() => {
    "additionalProp1": additionalProp1!.toJson(),
  };
}

class AdditionalProp1 {
  AdditionalProp1();

  factory AdditionalProp1.fromJson(Map<String, dynamic> json) => AdditionalProp1(
  );

  Map<String, dynamic> toJson() => {
  };
}
