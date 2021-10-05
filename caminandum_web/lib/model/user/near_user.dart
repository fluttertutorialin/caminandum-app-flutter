// To parse this JSON data, do
//
//     final nearbyUser = nearbyUserFromJson(jsonString);

import 'dart:convert';

NearbyUser nearbyUserFromJson(String str) =>
    NearbyUser.fromJson(json.decode(str));

String nearbyUserToJson(NearbyUser data) => json.encode(data.toJson());

class NearbyUser {
  NearbyUser({
    required this.profiles,
    required this.page,
    required this.limit,
    required this.total,
  });

  List<Profile> profiles;
  int page;
  int limit;
  int total;

  factory NearbyUser.fromJson(Map<String, dynamic> json) => NearbyUser(
        profiles: List<Profile>.from(
            json["profiles"].map((x) => Profile.fromJson(x))),
        page: json["page"],
        limit: json["limit"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "profiles": List<dynamic>.from(profiles.map((x) => x.toJson())),
        "page": page,
        "limit": limit,
        "total": total,
      };
}

class Profile {
  Profile({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.dateJoined,
    required this.isPublic,
    required this.photos,
    required this.bio,
    required this.gender,
    required this.status,
    required this.lastMessage,
    required this.covid19Vaccinated,
  });

  String id;
  String userId;
  String firstName;
  String lastName;
  String avatar;
  String dateJoined;
  bool isPublic;
  List<String> photos;
  Bio? bio;
  Gender? gender;
  Status? status;
  String lastMessage;
  bool covid19Vaccinated;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        userId: json["user_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
        dateJoined: json["date_joined"],
        isPublic: json["is_public"],
        photos: List<String>.from(json["photos"].map((x) => x)),
        bio: bioValues.map[json["bio"]],
        gender: genderValues.map[json["gender"]],
        status: statusValues.map[json["status"]],
        lastMessage: json["last_message"],
        covid19Vaccinated: json["covid19_vaccinated"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
        "date_joined": dateJoined,
        "is_public": isPublic,
        "photos": List<dynamic>.from(photos.map((x) => x)),
        "bio": bioValues.reverse[bio],
        "gender": genderValues.reverse[gender],
        "status": statusValues.reverse[status],
        "last_message": lastMessage,
        "covid19_vaccinated": covid19Vaccinated,
      };
}

enum Bio { EMPTY, MANAGER, PROFESOR }

final bioValues = EnumValues(
    {"": Bio.EMPTY, "Manager": Bio.MANAGER, "Profesor": Bio.PROFESOR});

enum Gender { MEN, EMPTY, WOMEN }

final genderValues =
    EnumValues({"": Gender.EMPTY, "Men": Gender.MEN, "Women": Gender.WOMEN});

enum Status { AWAY }

final statusValues = EnumValues({"Away": Status.AWAY});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
