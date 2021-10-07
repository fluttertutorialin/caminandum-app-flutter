// To parse this JSON data, do
//
//     final userAreaPerformance = userAreaPerformanceFromJson(jsonString);

import 'dart:convert';

UserAreaPerformance userAreaPerformanceFromJson(String str) => UserAreaPerformance.fromJson(json.decode(str));

String userAreaPerformanceToJson(UserAreaPerformance data) => json.encode(data.toJson());

class UserAreaPerformance {
  UserAreaPerformance({
    this.id,
    this.refreshToken,
    this.token,
    this.user,
  });

  String ?id;
  String ?refreshToken;
  String ?token;
  User ?user;

  factory UserAreaPerformance.fromJson(Map<String, dynamic> json) => UserAreaPerformance(
    id: json["id"],
    refreshToken: json["refresh_token"],
    token: json["token"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "refresh_token": refreshToken,
    "token": token,
    "user": user!.toJson(),
  };
}

class User {
  User({
    this.createdAt,
    this.dailyStepCountGoal,
    this.id,
    this.lastCoords,
    this.monthlyStepCountGoal,
    this.updatedAt,
    this.weeklyStepCountGoal,
  });

  String ?createdAt;
  int ?dailyStepCountGoal;
  String ?id;
  LastCoords ?lastCoords;
  int ?monthlyStepCountGoal;
  String ?updatedAt;
  int ?weeklyStepCountGoal;

  factory User.fromJson(Map<String, dynamic> json) => User(
    createdAt: json["created_at"],
    dailyStepCountGoal: json["daily_step_count_goal"],
    id: json["id"],
    lastCoords: LastCoords.fromJson(json["last_coords"]),
    monthlyStepCountGoal: json["monthly_step_count_goal"],
    updatedAt: json["updated_at"],
    weeklyStepCountGoal: json["weekly_step_count_goal"],
  );

  Map<String, dynamic> toJson() => {
    "created_at": createdAt,
    "daily_step_count_goal": dailyStepCountGoal,
    "id": id,
    "last_coords": lastCoords!.toJson(),
    "monthly_step_count_goal": monthlyStepCountGoal,
    "updated_at": updatedAt,
    "weekly_step_count_goal": weeklyStepCountGoal,
  };
}

class LastCoords {
  LastCoords({
    this.city,
    this.cityAliases,
    this.country,
    this.countryAliases,
    this.countryCode,
    this.lat,
    this.long,
    this.name,
    this.searchName,
    this.timing,
    this.type,
  });

  String ?city;
  List<String> ?cityAliases;
  String ?country;
  List<String> ?countryAliases;
  String ?countryCode;
  int ?lat;
  int ?long;
  String ?name;
  String ?searchName;
  int ?timing;
  String ?type;

  factory LastCoords.fromJson(Map<String, dynamic> json) => LastCoords(
    city: json["city"],
    cityAliases: List<String>.from(json["city_aliases"].map((x) => x)),
    country: json["country"],
    countryAliases: List<String>.from(json["country_aliases"].map((x) => x)),
    countryCode: json["country_code"],
    lat: json["lat"],
    long: json["long"],
    name: json["name"],
    searchName: json["search_name"],
    timing: json["timing"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "city": city,
    "city_aliases": List<dynamic>.from(cityAliases!.map((x) => x)),
    "country": country,
    "country_aliases": List<dynamic>.from(countryAliases!.map((x) => x)),
    "country_code": countryCode,
    "lat": lat,
    "long": long,
    "name": name,
    "search_name": searchName,
    "timing": timing,
    "type": type,
  };
}
