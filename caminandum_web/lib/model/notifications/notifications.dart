// To parse this JSON data, do
//
//     final notifications = notificationsFromJson(jsonString);

import 'dart:convert';

Notifications notificationsFromJson(String str) => Notifications.fromJson(json.decode(str));

String notificationsToJson(Notifications data) => json.encode(data.toJson());

class Notifications {
  Notifications({
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

  factory Notifications.fromJson(Map<String, dynamic> json) => Notifications(
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
