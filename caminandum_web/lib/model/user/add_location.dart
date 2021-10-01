// To parse this JSON data, do
//
//     final addLocation = addLocationFromJson(jsonString);

import 'dart:convert';

AddLocation addLocationFromJson(String str) => AddLocation.fromJson(json.decode(str));

String addLocationToJson(AddLocation data) => json.encode(data.toJson());

class AddLocation {
  AddLocation({
    this.lat,
    this.long,
  });

  int ?lat;
  int ?long;

  factory AddLocation.fromJson(Map<String, dynamic> json) => AddLocation(
    lat: json["lat"],
    long: json["long"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "long": long,
  };
}
