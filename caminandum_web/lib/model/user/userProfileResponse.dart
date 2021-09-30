// To parse this JSON data, do
//
//     final userProfileResponse = userProfileResponseFromJson(jsonString);

import 'dart:convert';

UserProfileResponse userProfileResponseFromJson(String str) => UserProfileResponse.fromJson(json.decode(str));

String userProfileResponseToJson(UserProfileResponse data) => json.encode(data.toJson());

class UserProfileResponse {
  UserProfileResponse({
    this.anonymous,
    this.availabilityActivities,
    this.availabilityDays,
    this.avatar,
    this.bikesIUse,
    this.bio,
    this.birthdate,
    this.blockedUsers,
    this.certificateFirstName,
    this.certificateImage,
    this.certificateLastName,
    this.chatStatus,
    this.city,
    this.companies,
    this.countryOfResidence,
    this.covid19Vaccinated,
    this.cpnCode,
    this.createdAt,
    this.currentLanguage,
    this.dailyStepCountGoal,
    this.defaultRadius,
    this.devices,
    this.disability,
    this.disableLocationHistory,
    this.email,
    this.firstName,
    this.gender,
    this.iHaveACat,
    this.iHaveADog,
    this.iSmoke,
    this.iUseBike,
    this.id,
    this.isOrg,
    this.isPublicProfile,
    this.knownLanguages,
    this.languagesSpoken,
    this.lastCoords,
    this.lastName,
    this.loginCount,
    this.loveMusic,
    this.monthlyStepCountGoal,
    this.nationality,
    this.phoneNo,
    this.photos,
    this.presentYourself,
    this.profileCompleted,
    this.socialProvider,
    this.socialToken,
    this.sponsoredBy,
    this.state,
    this.status,
    this.subscriptionExpires,
    this.token,
    this.updatedAt,
    this.vaccineDate1,
    this.vaccineDate2,
    this.vaccineProvider,
    this.walkRunSpeed,
    this.walkRunWith,
    this.weeklyStepCountGoal,
  });

  bool ?anonymous;
  List<String> ?availabilityActivities;
  AvailabilityDays ?availabilityDays;
  String ?avatar;
  List<String> ?bikesIUse;
  String ?bio;
  String ?birthdate;
  List<String> ?blockedUsers;
  String ?certificateFirstName;
  String ?certificateImage;
  String ?certificateLastName;
  String ?chatStatus;
  String ?city;
  List<String> ?companies;
  String ?countryOfResidence;
  bool ?covid19Vaccinated;
  String ?cpnCode;
  String ?createdAt;
  String ?currentLanguage;
  int ?dailyStepCountGoal;
  int ?defaultRadius;
  List<Device> ?devices;
  bool ?disability;
  bool ?disableLocationHistory;
  String ?email;
  String ?firstName;
  String ?gender;
  bool ?iHaveACat;
  bool ?iHaveADog;
  bool ?iSmoke;
  bool ?iUseBike;
  String ?id;
  bool ?isOrg;
  bool ?isPublicProfile;
  List<String> ?knownLanguages;
  List<LanguagesSpoken> ?languagesSpoken;
  LastCoords ?lastCoords;
  String ?lastName;
  int ?loginCount;
  bool ?loveMusic;
  int ?monthlyStepCountGoal;
  Nationality ?nationality;
  String ?phoneNo;
  List<String> ?photos;
  String ?presentYourself;
  bool ?profileCompleted;
  String ?socialProvider;
  String ?socialToken;
  List<String> ?sponsoredBy;
  int ?state;
  String ?status;
  String ?subscriptionExpires;
  String ?token;
  String ?updatedAt;
  String ?vaccineDate1;
  String ?vaccineDate2;
  String ?vaccineProvider;
  int ?walkRunSpeed;
  String ?walkRunWith;
  int ?weeklyStepCountGoal;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) => UserProfileResponse(
    anonymous: json["anonymous"],
    availabilityActivities: List<String>.from(json["availability_activities"].map((x) => x)),
    availabilityDays: AvailabilityDays.fromJson(json["availability_days"]),
    avatar: json["avatar"],
    bikesIUse: List<String>.from(json["bikes_i_use"].map((x) => x)),
    bio: json["bio"],
    birthdate: json["birthdate"],
    blockedUsers: List<String>.from(json["blocked_users"].map((x) => x)),
    certificateFirstName: json["certificate_first_name"],
    certificateImage: json["certificate_image"],
    certificateLastName: json["certificate_last_name"],
    chatStatus: json["chat_status"],
    city: json["city"],
    companies: List<String>.from(json["companies"].map((x) => x)),
    countryOfResidence: json["country_of_residence"],
    covid19Vaccinated: json["covid19_vaccinated"],
    cpnCode: json["cpn_code"],
    createdAt: json["created_at"],
    currentLanguage: json["current_language"],
    dailyStepCountGoal: json["daily_step_count_goal"],
    defaultRadius: json["default_radius"],
    devices: List<Device>.from(json["devices"].map((x) => Device.fromJson(x))),
    disability: json["disability"],
    disableLocationHistory: json["disable_location_history"],
    email: json["email"],
    firstName: json["first_name"],
    gender: json["gender"],
    iHaveACat: json["i_have_a_cat"],
    iHaveADog: json["i_have_a_dog"],
    iSmoke: json["i_smoke"],
    iUseBike: json["i_use_bike"],
    id: json["id"],
    isOrg: json["is_org"],
    isPublicProfile: json["is_public_profile"],
    knownLanguages: List<String>.from(json["known_languages"].map((x) => x)),
    languagesSpoken: List<LanguagesSpoken>.from(json["languages_spoken"].map((x) => LanguagesSpoken.fromJson(x))),
    lastCoords: LastCoords.fromJson(json["last_coords"]),
    lastName: json["last_name"],
    loginCount: json["login_count"],
    loveMusic: json["love_music"],
    monthlyStepCountGoal: json["monthly_step_count_goal"],
    nationality: Nationality.fromJson(json["nationality"]),
    phoneNo: json["phone_no"],
    photos: List<String>.from(json["photos"].map((x) => x)),
    presentYourself: json["present_yourself"],
    profileCompleted: json["profile_completed"],
    socialProvider: json["social_provider"],
    socialToken: json["social_token"],
    sponsoredBy: List<String>.from(json["sponsored_by"].map((x) => x)),
    state: json["state"],
    status: json["status"],
    subscriptionExpires: json["subscription_expires"],
    token: json["token"],
    updatedAt: json["updated_at"],
    vaccineDate1: json["vaccine_date1"],
    vaccineDate2: json["vaccine_date2"],
    vaccineProvider: json["vaccine_provider"],
    walkRunSpeed: json["walk_run_speed"],
    walkRunWith: json["walk_run_with"],
    weeklyStepCountGoal: json["weekly_step_count_goal"],
  );

  Map<String, dynamic> toJson() => {
    "anonymous": anonymous,
    "availability_activities": List<dynamic>.from(availabilityActivities!.map((x) => x)),
    "availability_days": availabilityDays!.toJson(),
    "avatar": avatar,
    "bikes_i_use": List<dynamic>.from(bikesIUse!.map((x) => x)),
    "bio": bio,
    "birthdate": birthdate,
    "blocked_users": List<dynamic>.from(blockedUsers!.map((x) => x)),
    "certificate_first_name": certificateFirstName,
    "certificate_image": certificateImage,
    "certificate_last_name": certificateLastName,
    "chat_status": chatStatus,
    "city": city,
    "companies": List<dynamic>.from(companies!.map((x) => x)),
    "country_of_residence": countryOfResidence,
    "covid19_vaccinated": covid19Vaccinated,
    "cpn_code": cpnCode,
    "created_at": createdAt,
    "current_language": currentLanguage,
    "daily_step_count_goal": dailyStepCountGoal,
    "default_radius": defaultRadius,
    "devices": List<dynamic>.from(devices!.map((x) => x.toJson())),
    "disability": disability,
    "disable_location_history": disableLocationHistory,
    "email": email,
    "first_name": firstName,
    "gender": gender,
    "i_have_a_cat": iHaveACat,
    "i_have_a_dog": iHaveADog,
    "i_smoke": iSmoke,
    "i_use_bike": iUseBike,
    "id": id,
    "is_org": isOrg,
    "is_public_profile": isPublicProfile,
    "known_languages": List<dynamic>.from(knownLanguages!.map((x) => x)),
    "languages_spoken": List<dynamic>.from(languagesSpoken!.map((x) => x.toJson())),
    "last_coords": lastCoords?.toJson(),
    "last_name": lastName,
    "login_count": loginCount,
    "love_music": loveMusic,
    "monthly_step_count_goal": monthlyStepCountGoal,
    "nationality": nationality?.toJson(),
    "phone_no": phoneNo,
    "photos": List<dynamic>.from(photos!.map((x) => x)),
    "present_yourself": presentYourself,
    "profile_completed": profileCompleted,
    "social_provider": socialProvider,
    "social_token": socialToken,
    "sponsored_by": List<dynamic>.from(sponsoredBy!.map((x) => x)),
    "state": state,
    "status": status,
    "subscription_expires": subscriptionExpires,
    "token": token,
    "updated_at": updatedAt,
    "vaccine_date1": vaccineDate1,
    "vaccine_date2": vaccineDate2,
    "vaccine_provider": vaccineProvider,
    "walk_run_speed": walkRunSpeed,
    "walk_run_with": walkRunWith,
    "weekly_step_count_goal": weeklyStepCountGoal,
  };
}

class AvailabilityDays {
  AvailabilityDays({
    this.additionalProp1,
    this.additionalProp2,
    this.additionalProp3,
  });

  AdditionalProp ?additionalProp1;
  AdditionalProp ?additionalProp2;
  AdditionalProp ?additionalProp3;

  factory AvailabilityDays.fromJson(Map<String, dynamic> json) => AvailabilityDays(
    additionalProp1: AdditionalProp.fromJson(json["additionalProp1"]),
    additionalProp2: AdditionalProp.fromJson(json["additionalProp2"]),
    additionalProp3: AdditionalProp.fromJson(json["additionalProp3"]),
  );

  Map<String, dynamic> toJson() => {
    "additionalProp1": additionalProp1?.toJson(),
    "additionalProp2": additionalProp2?.toJson(),
    "additionalProp3": additionalProp3?.toJson(),
  };
}

class AdditionalProp {
  AdditionalProp({
    this.additionalProp1,
    this.additionalProp2,
    this.additionalProp3,
  });

  bool ?additionalProp1;
  bool ?additionalProp2;
  bool ?additionalProp3;

  factory AdditionalProp.fromJson(Map<String, dynamic> json) => AdditionalProp(
    additionalProp1: json["additionalProp1"],
    additionalProp2: json["additionalProp2"],
    additionalProp3: json["additionalProp3"],
  );

  Map<String, dynamic> toJson() => {
    "additionalProp1": additionalProp1,
    "additionalProp2": additionalProp2,
    "additionalProp3": additionalProp3,
  };
}

class Device {
  Device({
    this.fcmToken,
    this.os,
    this.version,
    this.constants,
    this.isTv,
    this.isTesting,
    this.owner,
  });

  String ?fcmToken;
  String ?os;
  int ?version;
  Constants ?constants;
  bool ?isTv;
  bool ?isTesting;
  String ?owner;

  factory Device.fromJson(Map<String, dynamic> json) => Device(
    fcmToken: json["FCMToken"],
    os: json["OS"],
    version: json["Version"],
    constants: Constants.fromJson(json["constants"]),
    isTv: json["isTV"],
    isTesting: json["isTesting"],
    owner: json["owner"],
  );

  Map<String, dynamic> toJson() => {
    "FCMToken": fcmToken,
    "OS": os,
    "Version": version,
    "constants": constants?.toJson(),
    "isTV": isTv,
    "isTesting": isTesting,
    "owner": owner,
  };
}

class Constants {
  Constants({
    this.fingerprint,
    this.model,
    this.release,
    this.serial,
    this.version,
    this.uiMode,
  });

  String ?fingerprint;
  String ?model;
  String ?release;
  String ?serial;
  int ?version;
  String ?uiMode;

  factory Constants.fromJson(Map<String, dynamic> json) => Constants(
    fingerprint: json["Fingerprint"],
    model: json["Model"],
    release: json["Release"],
    serial: json["Serial"],
    version: json["Version"],
    uiMode: json["uiMode"],
  );

  Map<String, dynamic> toJson() => {
    "Fingerprint": fingerprint,
    "Model": model,
    "Release": release,
    "Serial": serial,
    "Version": version,
    "uiMode": uiMode,
  };
}

class LanguagesSpoken {
  LanguagesSpoken({
    this.code,
    this.level,
  });

  String ?code;
  int ?level;

  factory LanguagesSpoken.fromJson(Map<String, dynamic> json) => LanguagesSpoken(
    code: json["code"],
    level: json["level"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "level": level,
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

class Nationality {
  Nationality({
    this.code,
    this.name,
  });

  String ?code;
  String ?name;

  factory Nationality.fromJson(Map<String, dynamic> json) => Nationality(
    code: json["code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
  };
}
