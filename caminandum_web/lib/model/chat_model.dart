// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'dart:convert';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
  ChatModel({
    this.conversationId,
    this.createdAt,
    this.data,
    this.id,
    this.isRead,
    this.isReadBy,
    this.senderId,
    this.tempId,
    this.text,
    this.type,
    this.updatedAt,
  });

  String? conversationId;
  String? createdAt;
  Data? data;
  String? id;
  bool? isRead;
  List<String>? isReadBy;
  String? senderId;
  int? tempId;
  String? text;
  String? type;
  String? updatedAt;

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        conversationId: json["conversation_id"],
        createdAt: json["created_at"],
        data: Data.fromJson(json["data"]),
        id: json["id"],
        isRead: json["is_read"],
        isReadBy: List<String>.from(json["is_read_by"].map((x) => x)),
        senderId: json["sender_id"],
        tempId: json["temp_id"],
        text: json["text"],
        type: json["type"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "conversation_id": conversationId,
        "created_at": createdAt,
        "data": data!.toJson(),
        "id": id,
        "is_read": isRead,
        "is_read_by": List<dynamic>.from(isReadBy!.map((x) => x)),
        "sender_id": senderId,
        "temp_id": tempId,
        "text": text,
        "type": type,
        "updated_at": updatedAt,
      };
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}
