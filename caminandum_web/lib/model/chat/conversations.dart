// To parse this JSON data, do
//
//     final conversations = conversationsFromJson(jsonString);

import 'dart:convert';

Conversations conversationsFromJson(String str) => Conversations.fromJson(json.decode(str));

String conversationsToJson(Conversations data) => json.encode(data.toJson());

class Conversations {
  Conversations({
    this.currentAvatar,
    this.limit,
    this.page,
    this.results,
    this.sentTo,
    this.target,
  });

  String ?currentAvatar;
  int ?limit;
  int ?page;
  Results ?results;
  String ?sentTo;
  String ?target;

  factory Conversations.fromJson(Map<String, dynamic> json) => Conversations(
    currentAvatar: json["current_avatar"],
    limit: json["limit"],
    page: json["page"],
    results: Results.fromJson(json["results"]),
    sentTo: json["sent_to"],
    target: json["target"],
  );

  Map<String, dynamic> toJson() => {
    "current_avatar": currentAvatar,
    "limit": limit,
    "page": page,
    "results": results!.toJson(),
    "sent_to": sentTo,
    "target": target,
  };
}

class Results {
  Results();

  factory Results.fromJson(Map<String, dynamic> json) => Results(
  );

  Map<String, dynamic> toJson() => {
  };
}
