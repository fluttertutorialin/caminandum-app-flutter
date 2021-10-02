// To parse this JSON data, do
//
//     final contactRequest = contactRequestFromJson(jsonString);

import 'dart:convert';

ContactRequest contactRequestFromJson(String str) => ContactRequest.fromJson(json.decode(str));

String contactRequestToJson(ContactRequest data) => json.encode(data.toJson());

class ContactRequest {
  ContactRequest({
    this.requests,
    this.userIds,
  });

  List<Request> ?requests;
  List<String> ?userIds;

  factory ContactRequest.fromJson(Map<String, dynamic> json) => ContactRequest(
    requests: List<Request>.from(json["requests"].map((x) => Request.fromJson(x))),
    userIds: List<String>.from(json["user_ids"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "requests": List<dynamic>.from(requests!.map((x) => x.toJson())),
    "user_ids": List<dynamic>.from(userIds!.map((x) => x)),
  };
}

class Request {
  Request({
    this.between,
    this.createdAt,
    this.id,
    this.invitationNote,
    this.profile,
    this.receiverId,
    this.senderId,
    this.status,
    this.updatedAt,
  });

  List<String> ?between;
  String ?createdAt;
  String ?id;
  String ?invitationNote;
  Profile ?profile;
  String ?receiverId;
  String ?senderId;
  String ?status;
  String ?updatedAt;

  factory Request.fromJson(Map<String, dynamic> json) => Request(
    between: List<String>.from(json["between"].map((x) => x)),
    createdAt: json["created_at"],
    id: json["id"],
    invitationNote: json["invitation_note"],
    profile: Profile.fromJson(json["profile"]),
    receiverId: json["receiver_id"],
    senderId: json["sender_id"],
    status: json["status"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "between": List<dynamic>.from(between!.map((x) => x)),
    "created_at": createdAt,
    "id": id,
    "invitation_note": invitationNote,
    "profile": profile!.toJson(),
    "receiver_id": receiverId,
    "sender_id": senderId,
    "status": status,
    "updated_at": updatedAt,
  };
}

class Profile {
  Profile({
    this.avatar,
    this.bio,
    this.covid19Vaccinated,
    this.dateJoined,
    this.firstName,
    this.gender,
    this.id,
    this.isPublic,
    this.lastMessage,
    this.lastName,
    this.photos,
    this.status,
    this.userId,
  });

  String ?avatar;
  String ?bio;
  bool ?covid19Vaccinated;
  String ?dateJoined;
  String ?firstName;
  String ?gender;
  String ?id;
  bool ?isPublic;
  String ?lastMessage;
  String ?lastName;
  List<String> ?photos;
  String ?status;
  String ?userId;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    avatar: json["avatar"],
    bio: json["bio"],
    covid19Vaccinated: json["covid19_vaccinated"],
    dateJoined: json["date_joined"],
    firstName: json["first_name"],
    gender: json["gender"],
    id: json["id"],
    isPublic: json["is_public"],
    lastMessage: json["last_message"],
    lastName: json["last_name"],
    photos: List<String>.from(json["photos"].map((x) => x)),
    status: json["status"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "avatar": avatar,
    "bio": bio,
    "covid19_vaccinated": covid19Vaccinated,
    "date_joined": dateJoined,
    "first_name": firstName,
    "gender": gender,
    "id": id,
    "is_public": isPublic,
    "last_message": lastMessage,
    "last_name": lastName,
    "photos": List<dynamic>.from(photos!.map((x) => x)),
    "status": status,
    "user_id": userId,
  };
}
