// To parse this JSON data, do
//
//     final vaccineStatus = vaccineStatusFromJson(jsonString);

import 'dart:convert';

VaccineStatus vaccineStatusFromJson(String str) => VaccineStatus.fromJson(json.decode(str));

String vaccineStatusToJson(VaccineStatus data) => json.encode(data.toJson());

class VaccineStatus {
  VaccineStatus({
    this.additionalProp1,
  });

  AdditionalProp1 ?additionalProp1;

  factory VaccineStatus.fromJson(Map<String, dynamic> json) => VaccineStatus(
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
