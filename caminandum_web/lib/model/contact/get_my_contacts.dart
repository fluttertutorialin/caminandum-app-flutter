// To parse this JSON data, do
//
//     final getMyContacts = getMyContactsFromJson(jsonString);

import 'dart:convert';

GetMyContacts getMyContactsFromJson(String str) => GetMyContacts.fromJson(json.decode(str));

String getMyContactsToJson(GetMyContacts data) => json.encode(data.toJson());

class GetMyContacts {
  GetMyContacts({
    this.limit,
    this.page,
    this.results,
    this.total,
  });

  int ?limit;
  int ?page;
  Results ?results;
  int ?total;

  factory GetMyContacts.fromJson(Map<String, dynamic> json) => GetMyContacts(
    limit: json["limit"],
    page: json["page"],
    results: Results.fromJson(json["results"]),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "limit": limit,
    "page": page,
    "results": results!.toJson(),
    "total": total,
  };
}

class Results {
  Results();

  factory Results.fromJson(Map<String, dynamic> json) => Results(
  );

  Map<String, dynamic> toJson() => {
  };
}
