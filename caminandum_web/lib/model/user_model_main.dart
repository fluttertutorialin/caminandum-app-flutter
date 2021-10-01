// To parse this JSON data, do
//
//     final userModelMain = userModelMainFromJson(jsonString);

import 'dart:convert';

UserModelMain userModelMainFromJson(String str) => UserModelMain.fromJson(json.decode(str));

String userModelMainToJson(UserModelMain data) => json.encode(data.toJson());

class UserModelMain {
  UserModelMain({
    this.id,
    this.email,
    this.phoneNo,
    this.avatar,
    this.birthdate,
    this.devices,
    this.photos,
    this.iUseBike,
    this.iSmoke,
    this.iHaveADog,
    this.iHaveACat,
    this.loveMusic,
    this.knownLanguages,
    this.currentLanguage,
    this.presentYourself,
    this.isPublicProfile,
    this.cpnCode,
    this.firstName,
    this.lastName,
    this.bio,
    this.gender,
    this.walkRunWith,
    this.disability,
    this.nationality,
    this.walkRunSpeed,
    this.languagesSpoken,
    this.loginCount,
    this.token,
    this.anonymous,
    this.socialToken,
    this.socialProvider,
    this.profileCompleted,
    this.city,
    this.lastCoords,
    this.dailyStepCountGoal,
    this.weeklyStepCountGoal,
    this.monthlyStepCountGoal,
    this.defaultRadius,
    this.disableLocationHistory,
    this.countryOfResidence,
    this.state,
    this.status,
    this.isOrg,
    this.availabilityDays,
    this.availabilityActivities,
    this.bikesIUse,
    this.chatStatus,
    this.subscriptionExpires,
    this.blockedUsers,
    this.companies,
    this.sponsoredBy,
    this.covid19Vaccinated,
    this.certificateFirstName,
    this.certificateLastName,
    this.vaccineDate1,
    this.vaccineDate2,
    this.vaccineProvider,
    this.certificateImage,
    this.createdAt,
    this.updatedAt,
  });

  String? id;
  String? email;
  String? phoneNo;
  String? avatar;
  DateTime? birthdate;
  List<dynamic>? devices;
  List<dynamic>? photos;
  bool? iUseBike;
  bool? iSmoke;
  bool? iHaveADog;
  bool? iHaveACat;
  bool? loveMusic;
  List<dynamic>? knownLanguages;
  String? currentLanguage;
  String? presentYourself;
  bool? isPublicProfile;
  String? cpnCode;
  String? firstName;
  String? lastName;
  String? bio;
  String? gender;
  String? walkRunWith;
  bool? disability;
  Nationality? nationality;
  int? walkRunSpeed;
  List<dynamic>? languagesSpoken;
  int? loginCount;
  String? token;
  bool? anonymous;
  String? socialToken;
  String? socialProvider;
  bool? profileCompleted;
  String? city;
  LastCoords? lastCoords;
  int? dailyStepCountGoal;
  int? weeklyStepCountGoal;
  int? monthlyStepCountGoal;
  int? defaultRadius;
  bool? disableLocationHistory;
  String? countryOfResidence;
  int? state;
  String? status;
  bool? isOrg;
  AvailabilityDays? availabilityDays;
  List<dynamic>? availabilityActivities;
  List<dynamic>? bikesIUse;
  String? chatStatus;
  DateTime? subscriptionExpires;
  List<dynamic>? blockedUsers;
  List<dynamic>? companies;
  List<dynamic>? sponsoredBy;
  bool? covid19Vaccinated;
  String? certificateFirstName;
  String? certificateLastName;
  DateTime? vaccineDate1;
  DateTime? vaccineDate2;
  String? vaccineProvider;
  String? certificateImage;
  DateTime? createdAt;
  DateTime? updatedAt;




  factory UserModelMain.fromJson(Map<String, dynamic> json) => UserModelMain(
    id: json["id"],
    email: json["email"],
    phoneNo: json["phone_no"],
    avatar: json["avatar"],
    birthdate: DateTime.parse(json["birthdate"]),
    devices: List<dynamic>.from(json["devices"].map((x) => x)),
    photos: List<dynamic>.from(json["photos"].map((x) => x)),
    iUseBike: json["i_use_bike"],
    iSmoke: json["i_smoke"],
    iHaveADog: json["i_have_a_dog"],
    iHaveACat: json["i_have_a_cat"],
    loveMusic: json["love_music"],
    knownLanguages: List<dynamic>.from(json["known_languages"].map((x) => x)),
    currentLanguage: json["current_language"],
    presentYourself: json["present_yourself"],
    isPublicProfile: json["is_public_profile"],
    cpnCode: json["cpn_code"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    bio: json["bio"],
    gender: json["gender"],
    walkRunWith: json["walk_run_with"],
    disability: json["disability"],
    nationality: Nationality.fromJson(json["nationality"]),
    walkRunSpeed: json["walk_run_speed"],
    languagesSpoken: List<dynamic>.from(json["languages_spoken"].map((x) => x)),
    loginCount: json["login_count"],
    token: json["token"],
    anonymous: json["anonymous"],
    socialToken: json["social_token"],
    socialProvider: json["social_provider"],
    profileCompleted: json["profile_completed"],
    city: json["city"],
    lastCoords: LastCoords.fromJson(json["last_coords"]),
    dailyStepCountGoal: json["daily_step_count_goal"],
    weeklyStepCountGoal: json["weekly_step_count_goal"],
    monthlyStepCountGoal: json["monthly_step_count_goal"],
    defaultRadius: json["default_radius"],
    disableLocationHistory: json["disable_location_history"],
    countryOfResidence: json["country_of_residence"],
    state: json["state"],
    status: json["status"],
    isOrg: json["is_org"],
    availabilityDays: AvailabilityDays.fromJson(json["availability_days"]),
    availabilityActivities: List<dynamic>.from(json["availability_activities"].map((x) => x)),
    bikesIUse: List<dynamic>.from(json["bikes_i_use"].map((x) => x)),
    chatStatus: json["chat_status"],
    subscriptionExpires: DateTime.parse(json["subscription_expires"]),
    blockedUsers: List<dynamic>.from(json["blocked_users"].map((x) => x)),
    companies: List<dynamic>.from(json["companies"].map((x) => x)),
    sponsoredBy: List<dynamic>.from(json["sponsored_by"].map((x) => x)),
    covid19Vaccinated: json["covid19_vaccinated"],
    certificateFirstName: json["certificate_first_name"],
    certificateLastName: json["certificate_last_name"],
    vaccineDate1: DateTime.parse(json["vaccine_date1"]),
    vaccineDate2: DateTime.parse(json["vaccine_date2"]),
    vaccineProvider: json["vaccine_provider"],
    certificateImage: json["certificate_image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "phone_no": phoneNo,
    "avatar": avatar,
    "birthdate": birthdate!.toIso8601String(),
    "devices": List<dynamic>.from(devices!.map((x) => x)),
    "photos": List<dynamic>.from(photos!.map((x) => x)),
    "i_use_bike": iUseBike,
    "i_smoke": iSmoke,
    "i_have_a_dog": iHaveADog,
    "i_have_a_cat": iHaveACat,
    "love_music": loveMusic,
    "known_languages": List<dynamic>.from(knownLanguages!.map((x) => x)),
    "current_language": currentLanguage,
    "present_yourself": presentYourself,
    "is_public_profile": isPublicProfile,
    "cpn_code": cpnCode,
    "first_name": firstName,
    "last_name": lastName,
    "bio": bio,
    "gender": gender,
    "walk_run_with": walkRunWith,
    "disability": disability,
    "nationality": nationality!.toJson(),
    "walk_run_speed": walkRunSpeed,
    "languages_spoken": List<dynamic>.from(languagesSpoken!.map((x) => x)),
    "login_count": loginCount,
    "token": token,
    "anonymous": anonymous,
    "social_token": socialToken,
    "social_provider": socialProvider,
    "profile_completed": profileCompleted,
    "city": city,
    "last_coords": lastCoords!.toJson(),
    "daily_step_count_goal": dailyStepCountGoal,
    "weekly_step_count_goal": weeklyStepCountGoal,
    "monthly_step_count_goal": monthlyStepCountGoal,
    "default_radius": defaultRadius,
    "disable_location_history": disableLocationHistory,
    "country_of_residence": countryOfResidence,
    "state": state,
    "status": status,
    "is_org": isOrg,
    "availability_days": availabilityDays!.toJson(),
    "availability_activities": List<dynamic>.from(availabilityActivities!.map((x) => x)),
    "bikes_i_use": List<dynamic>.from(bikesIUse!.map((x) => x)),
    "chat_status": chatStatus,
    "subscription_expires": subscriptionExpires!.toIso8601String(),
    "blocked_users": List<dynamic>.from(blockedUsers!.map((x) => x)),
    "companies": List<dynamic>.from(companies!.map((x) => x)),
    "sponsored_by": List<dynamic>.from(sponsoredBy!.map((x) => x)),
    "covid19_vaccinated": covid19Vaccinated,
    "certificate_first_name": certificateFirstName,
    "certificate_last_name": certificateLastName,
    "vaccine_date1": vaccineDate1!.toIso8601String(),
    "vaccine_date2": vaccineDate2!.toIso8601String(),
    "vaccine_provider": vaccineProvider,
    "certificate_image": certificateImage,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
  };
}

class AvailabilityDays {
  AvailabilityDays();

  factory AvailabilityDays.fromJson(Map<String, dynamic> json) => AvailabilityDays(
  );

  Map<String, dynamic> toJson() => {
  };
}

class LastCoords {
  LastCoords({
    this.long,
    this.lat,
    this.city,
    this.cityAliases,
    this.name,
    this.searchName,
    this.type,
    this.country,
    this.countryAliases,
    this.countryCode,
    this.timing,
  });

  int? long;
  int? lat;
  String? city;
  List<dynamic>? cityAliases;
  String? name;
  String? searchName;
  String? type;
  String? country;
  List<dynamic>? countryAliases;
  String? countryCode;
  int? timing;

  factory LastCoords.fromJson(Map<String, dynamic> json) => LastCoords(
    long: json["long"],
    lat: json["lat"],
    city: json["city"],
    cityAliases: List<dynamic>.from(json["city_aliases"].map((x) => x)),
    name: json["name"],
    searchName: json["search_name"],
    type: json["type"],
    country: json["country"],
    countryAliases: List<dynamic>.from(json["country_aliases"].map((x) => x)),
    countryCode: json["country_code"],
    timing: json["timing"],
  );

  Map<String, dynamic> toJson() => {
    "long": long,
    "lat": lat,
    "city": city,
    "city_aliases": List<dynamic>.from(cityAliases!.map((x) => x)),
    "name": name,
    "search_name": searchName,
    "type": type,
    "country": country,
    "country_aliases": List<dynamic>.from(countryAliases!.map((x) => x)),
    "country_code": countryCode,
    "timing": timing,
  };
}

class Nationality {
  Nationality({
    this.name,
    this.code,
  });

  String? name;
  String?  code;

  factory Nationality.fromJson(Map<String, dynamic> json) => Nationality(
    name: json["name"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "code": code,
  };
}
