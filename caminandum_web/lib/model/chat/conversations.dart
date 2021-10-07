// To parse this JSON data, do
//
//     final conversations = conversationsFromJson(jsonString);

import 'dart:convert';

Conversations conversationsFromJson(String str) =>
    Conversations.fromJson(json.decode(str));

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

  String? currentAvatar;
  int? limit;
  int? page;
  Results? results;
  String? sentTo;
  String? target;

  factory Conversations.fromJson(Map<String, dynamic> json) => Conversations(
        currentAvatar: json["current_avatar"],
        limit: json["limit"],
        page: json["page"],
        //results: Results.fromJson(json["results"]),
        sentTo: json["sent_to"],
        target: json["target"],
      );

  Map<String, dynamic> toJson() => {
        "current_avatar": currentAvatar,
        "limit": limit,
        "page": page,
        //"results": results!.toJson(),
        "sent_to": sentTo,
        "target": target,
      };
}

class Results {
  String? id;
  String? initiatedBy;
  LastMessage? lastMessage;
  String? description;
  List<String>? participants;
  String? relatedEvent;
  String? companyId;
  String? createdAt;
  String? updatedAt;

  Results(
      {this.id,
      this.initiatedBy,
      this.lastMessage,
      this.description,
      this.participants,
      this.relatedEvent,
      this.companyId,
      this.createdAt,
      this.updatedAt});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    initiatedBy = json['initiated_by'];
    lastMessage = json['last_message'] != null
        ? new LastMessage.fromJson(json['last_message'])
        : null;
    description = json['description'];
    participants = json['participants'].cast<String>();
    relatedEvent = json['related_event'];
    companyId = json['company_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}

class LastMessage {
  String? id;
  String? text;
  int? tempId;
  String? conversationId;
  String? senderId;
  bool? isRead;
  String? type;
  String? createdAt;
  String? updatedAt;

  LastMessage(
      {this.id,
      this.text,
      this.tempId,
      this.conversationId,
      this.senderId,
      this.isRead,
      this.type,
      this.createdAt,
      this.updatedAt});

  LastMessage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    tempId = json['temp_id'];
    conversationId = json['conversation_id'];
    senderId = json['sender_id'];
    isRead = json['is_read'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
