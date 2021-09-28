// To parse this JSON data, do
//
//     final userProfile = userProfileFromJson(jsonString);

import 'dart:convert';

UserProfile userProfileFromJson(String str) => UserProfile.fromJson(json.decode(str));

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    this.avatar,
    this.birthdate,
    this.city,
    this.companyAddress,
    this.companyCountry,
    this.companyName,
    this.countryOfResidence,
    this.email,
    this.firstName,
    this.fiscalId,
    this.gender,
    this.lastName,
    this.nationality,
    this.password,
    this.phoneNo,
    this.postalCode,
  });

  String ?avatar;
  String ?birthdate;
  String ?city;
  String ?companyAddress;
  String ?companyCountry;
  String ?companyName;
  String ?countryOfResidence;
  String ?email;
  String ?firstName;
  String ?fiscalId;
  bool ?gender;
  String ?lastName;
  Nationality ?nationality;
  String ?password;
  String ?phoneNo;
  String ?postalCode;

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    avatar: json["avatar"],
    birthdate: json["birthdate"],
    city: json["city"],
    companyAddress: json["company_address"],
    companyCountry: json["company_country"],
    companyName: json["company_name"],
    countryOfResidence: json["country_of_residence"],
    email: json["email"],
    firstName: json["first_name"],
    fiscalId: json["fiscal_id"],
    gender: json["gender"],
    lastName: json["last_name"],
    nationality: Nationality.fromJson(json["nationality"]),
    password: json["password"],
    phoneNo: json["phone_no"],
    postalCode: json["postal_code"],
  );

  Map<String, dynamic> toJson() => {
    "avatar": avatar,
    "birthdate": birthdate,
    "city": city,
    "company_address": companyAddress,
    "company_country": companyCountry,
    "company_name": companyName,
    "country_of_residence": countryOfResidence,
    "email": email,
    "first_name": firstName,
    "fiscal_id": fiscalId,
    "gender": gender,
    "last_name": lastName,
    "nationality": nationality?.toJson(),
    "password": password,
    "phone_no": phoneNo,
    "postal_code": postalCode,
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
