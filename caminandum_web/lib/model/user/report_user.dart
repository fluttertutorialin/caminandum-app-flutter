// To parse this JSON data, do
//
//     final reportUser = reportUserFromJson(jsonString);

import 'dart:convert';

ReportUser reportUserFromJson(String str) => ReportUser.fromJson(json.decode(str));

String reportUserToJson(ReportUser data) => json.encode(data.toJson());

class ReportUser {
  ReportUser({
    this.adminNotes,
    this.complaintType,
    this.createdAt,
    this.description,
    this.id,
    this.reportById,
    this.resolved,
    this.resolvedBy,
    this.updatedAt,
    this.userDetails,
    this.userId,
  });

  String ?adminNotes;
  String ?complaintType;
  String ?createdAt;
  String ?description;
  String ?id;
  String ?reportById;
  bool ?resolved;
  String ?resolvedBy;
  String ?updatedAt;
  UserDetails ?userDetails;
  String ?userId;

  factory ReportUser.fromJson(Map<String, dynamic> json) => ReportUser(
    adminNotes: json["admin_notes"],
    complaintType: json["complaint_type"],
    createdAt: json["created_at"],
    description: json["description"],
    id: json["id"],
    reportById: json["report_by_id"],
    resolved: json["resolved"],
    resolvedBy: json["resolved_by"],
    updatedAt: json["updated_at"],
    userDetails: UserDetails.fromJson(json["user_details"]),
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "admin_notes": adminNotes,
    "complaint_type": complaintType,
    "created_at": createdAt,
    "description": description,
    "id": id,
    "report_by_id": reportById,
    "resolved": resolved,
    "resolved_by": resolvedBy,
    "updated_at": updatedAt,
    "user_details": userDetails!.toJson(),
    "user_id": userId,
  };
}

class UserDetails {
  UserDetails({
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

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
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
