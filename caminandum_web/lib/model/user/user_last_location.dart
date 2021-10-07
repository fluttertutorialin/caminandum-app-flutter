// To parse this JSON data, do
//
//     final userLastLoction = userLastLoctionFromJson(jsonString);

import 'dart:convert';

UserLastLoction userLastLoctionFromJson(String str) => UserLastLoction.fromJson(json.decode(str));

String userLastLoctionToJson(UserLastLoction data) => json.encode(data.toJson());

class UserLastLoction {
  UserLastLoction({
    this.allowsVoip,
    this.carrierName,
    this.city,
    this.coordinates,
    this.createdAt,
    this.id,
    this.ip,
    this.isoCountryCode,
    this.mobileCountryCode,
    this.mobleNetworkCode,
    this.networkCode,
    this.updatedAt,
    this.userId,
  });

  bool ?allowsVoip;
  String ?carrierName;
  String ?city;
  List<int> ?coordinates;
  String ?createdAt;
  String ?id;
  String ?ip;
  String ?isoCountryCode;
  String ?mobileCountryCode;
  String ?mobleNetworkCode;
  String ?networkCode;
  String ?updatedAt;
  String ?userId;

  factory UserLastLoction.fromJson(Map<String, dynamic> json) => UserLastLoction(
    allowsVoip: json["allows_voip"],
    carrierName: json["carrier_name"],
    city: json["city"],
    coordinates: List<int>.from(json["coordinates"].map((x) => x)),
    createdAt: json["created_at"],
    id: json["id"],
    ip: json["ip"],
    isoCountryCode: json["iso_country_code"],
    mobileCountryCode: json["mobile_country_code"],
    mobleNetworkCode: json["moble_network_code"],
    networkCode: json["network_code"],
    updatedAt: json["updated_at"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "allows_voip": allowsVoip,
    "carrier_name": carrierName,
    "city": city,
    "coordinates": List<dynamic>.from(coordinates!.map((x) => x)),
    "created_at": createdAt,
    "id": id,
    "ip": ip,
    "iso_country_code": isoCountryCode,
    "mobile_country_code": mobileCountryCode,
    "moble_network_code": mobleNetworkCode,
    "network_code": networkCode,
    "updated_at": updatedAt,
    "user_id": userId,
  };
}
