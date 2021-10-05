// To parse this JSON data, do
//
//     final NearByUserApi = NearByUserApiFromJson(jsonString);

import 'dart:convert';

NearByUserApi NearByUserApiFromJson(String str) =>
    NearByUserApi.fromJson(json.decode(str));

String NearByUserApiToJson(NearByUserApi data) => json.encode(data.toJson());

class NearByUserApi {
  NearByUserApi(
      {this.onlyVaccinated,
      this.groupByCompany,
      this.lat,
      this.long,
      this.page});

  int? onlyVaccinated;
  int? groupByCompany;
  String? lat;
  String? long;
  int? page;

  factory NearByUserApi.fromJson(Map<String, dynamic> json) => NearByUserApi(
      onlyVaccinated: json["only_vaccinated"],
      groupByCompany: json["group_by_company"],
      lat: json["lat"],
      long: json["long"],
      page: json['page']);

  Map<String, dynamic> toJson() => {
        "only_vaccinated": onlyVaccinated,
        "group_by_company": groupByCompany,
        "lat": lat,
        "long": long,
        "page": page
      };
}
