class UserModel {
  UserModel({
    required this.id,
    required this.email,
    required this.phoneNo,
    required this.avatar,
    required this.birthdate,
    required this.devices,
    required this.photos,
    required this.iUseBike,
    required this.iSmoke,
    required this.iHaveADog,
    required this.iHaveACat,
    required this.loveMusic,
    required this.knownLanguages,
    required this.currentLanguage,
    required this.presentYourself,
    required this.isPublicProfile,
    required this.cpnCode,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.gender,
    required this.walkRunWith,
    required this.disability,
    required this.nationality,
    required this.walkRunSpeed,
    required this.languagesSpoken,
    required this.loginCount,
    required this.token,
    required this.anonymous,
    required this.socialToken,
    required this.socialProvider,
    required this.profileCompleted,
    required this.city,
    required this.lastCoords,
    required this.dailyStepCountGoal,
    required this.weeklyStepCountGoal,
    required this.monthlyStepCountGoal,
    required this.defaultRadius,
    required this.disableLocationHistory,
    required this.countryOfResidence,
    required this.state,
    required this.status,
    required this.isOrg,
    required this.availabilityDays,
    required this.availabilityActivities,
    required this.bikesIUse,
    required this.chatStatus,
    required this.subscriptionExpires,
    required this.blockedUsers,
    required this.companies,
    required this.sponsoredBy,
    required this.covid19Vaccinated,
    required this.certificateFirstName,
    required this.certificateLastName,
    required this.vaccineDate1,
    required this.vaccineDate2,
    required this.vaccineProvider,
    required this.certificateImage,
    required this.createdAt,
    required this.updatedAt,
  });
  late final String id;
  late final String email;
  late final String phoneNo;
  late final String avatar;
  late final String birthdate;
  late final List<dynamic> devices;
  late final List<dynamic> photos;
  late final bool iUseBike;
  late final bool iSmoke;
  late final bool iHaveADog;
  late final bool iHaveACat;
  late final bool loveMusic;
  late final List<dynamic> knownLanguages;
  late final String currentLanguage;
  late final String presentYourself;
  late final bool isPublicProfile;
  late final String cpnCode;
  late final String firstName;
  late final String lastName;
  late final String bio;
  late final String gender;
  late final String walkRunWith;
  late final bool disability;
  late final Nationality nationality;
  late final int walkRunSpeed;
  late final List<dynamic> languagesSpoken;
  late final int loginCount;
  late final String token;
  late final bool anonymous;
  late final String socialToken;
  late final String socialProvider;
  late final bool profileCompleted;
  late final String city;
  late final LastCoords lastCoords;
  late final int dailyStepCountGoal;
  late final int weeklyStepCountGoal;
  late final int monthlyStepCountGoal;
  late final int defaultRadius;
  late final bool disableLocationHistory;
  late final String countryOfResidence;
  late final int state;
  late final String status;
  late final bool isOrg;
  late final AvailabilityDays availabilityDays;
  late final List<dynamic> availabilityActivities;
  late final List<dynamic> bikesIUse;
  late final String chatStatus;
  late final String subscriptionExpires;
  late final List<dynamic> blockedUsers;
  late final List<dynamic> companies;
  late final List<dynamic> sponsoredBy;
  late final bool covid19Vaccinated;
  late final String certificateFirstName;
  late final String certificateLastName;
  late final String vaccineDate1;
  late final String vaccineDate2;
  late final String vaccineProvider;
  late final String certificateImage;
  late final String createdAt;
  late final String updatedAt;

  UserModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    email = json['email'];
    phoneNo = json['phone_no'];
    avatar = json['avatar'];
    birthdate = json['birthdate'];
    devices = List.castFrom<dynamic, dynamic>(json['devices']);
    photos = List.castFrom<dynamic, dynamic>(json['photos']);
    iUseBike = json['i_use_bike'];
    iSmoke = json['i_smoke'];
    iHaveADog = json['i_have_a_dog'];
    iHaveACat = json['i_have_a_cat'];
    loveMusic = json['love_music'];
    knownLanguages = List.castFrom<dynamic, dynamic>(json['known_languages']);
    currentLanguage = json['current_language'];
    presentYourself = json['present_yourself'];
    isPublicProfile = json['is_public_profile'];
    cpnCode = json['cpn_code'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    bio = json['bio'];
    gender = json['gender'];
    walkRunWith = json['walk_run_with'];
    disability = json['disability'];
    nationality = Nationality.fromJson(json['nationality']);
    walkRunSpeed = json['walk_run_speed'];
    languagesSpoken = List.castFrom<dynamic, dynamic>(json['languages_spoken']);
    loginCount = json['login_count'];
    token = json['token'];
    anonymous = json['anonymous'];
    socialToken = json['social_token'];
    socialProvider = json['social_provider'];
    profileCompleted = json['profile_completed'];
    city = json['city'];
    lastCoords = LastCoords.fromJson(json['last_coords']);
    dailyStepCountGoal = json['daily_step_count_goal'];
    weeklyStepCountGoal = json['weekly_step_count_goal'];
    monthlyStepCountGoal = json['monthly_step_count_goal'];
    defaultRadius = json['default_radius'];
    disableLocationHistory = json['disable_location_history'];
    countryOfResidence = json['country_of_residence'];
    state = json['state'];
    status = json['status'];
    isOrg = json['is_org'];
    availabilityDays = AvailabilityDays.fromJson(json['availability_days']);
    availabilityActivities = List.castFrom<dynamic, dynamic>(json['availability_activities']);
    bikesIUse = List.castFrom<dynamic, dynamic>(json['bikes_i_use']);
    chatStatus = json['chat_status'];
    subscriptionExpires = json['subscription_expires'];
    blockedUsers = List.castFrom<dynamic, dynamic>(json['blocked_users']);
    companies = List.castFrom<dynamic, dynamic>(json['companies']);
    sponsoredBy = List.castFrom<dynamic, dynamic>(json['sponsored_by']);
    covid19Vaccinated = json['covid19_vaccinated'];
    certificateFirstName = json['certificate_first_name'];
    certificateLastName = json['certificate_last_name'];
    vaccineDate1 = json['vaccine_date1'];
    vaccineDate2 = json['vaccine_date2'];
    vaccineProvider = json['vaccine_provider'];
    certificateImage = json['certificate_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['email'] = email;
    _data['phone_no'] = phoneNo;
    _data['avatar'] = avatar;
    _data['birthdate'] = birthdate;
    _data['devices'] = devices;
    _data['photos'] = photos;
    _data['i_use_bike'] = iUseBike;
    _data['i_smoke'] = iSmoke;
    _data['i_have_a_dog'] = iHaveADog;
    _data['i_have_a_cat'] = iHaveACat;
    _data['love_music'] = loveMusic;
    _data['known_languages'] = knownLanguages;
    _data['current_language'] = currentLanguage;
    _data['present_yourself'] = presentYourself;
    _data['is_public_profile'] = isPublicProfile;
    _data['cpn_code'] = cpnCode;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['bio'] = bio;
    _data['gender'] = gender;
    _data['walk_run_with'] = walkRunWith;
    _data['disability'] = disability;
    _data['nationality'] = nationality.toJson();
    _data['walk_run_speed'] = walkRunSpeed;
    _data['languages_spoken'] = languagesSpoken;
    _data['login_count'] = loginCount;
    _data['token'] = token;
    _data['anonymous'] = anonymous;
    _data['social_token'] = socialToken;
    _data['social_provider'] = socialProvider;
    _data['profile_completed'] = profileCompleted;
    _data['city'] = city;
    _data['last_coords'] = lastCoords.toJson();
    _data['daily_step_count_goal'] = dailyStepCountGoal;
    _data['weekly_step_count_goal'] = weeklyStepCountGoal;
    _data['monthly_step_count_goal'] = monthlyStepCountGoal;
    _data['default_radius'] = defaultRadius;
    _data['disable_location_history'] = disableLocationHistory;
    _data['country_of_residence'] = countryOfResidence;
    _data['state'] = state;
    _data['status'] = status;
    _data['is_org'] = isOrg;
    _data['availability_days'] = availabilityDays.toJson();
    _data['availability_activities'] = availabilityActivities;
    _data['bikes_i_use'] = bikesIUse;
    _data['chat_status'] = chatStatus;
    _data['subscription_expires'] = subscriptionExpires;
    _data['blocked_users'] = blockedUsers;
    _data['companies'] = companies;
    _data['sponsored_by'] = sponsoredBy;
    _data['covid19_vaccinated'] = covid19Vaccinated;
    _data['certificate_first_name'] = certificateFirstName;
    _data['certificate_last_name'] = certificateLastName;
    _data['vaccine_date1'] = vaccineDate1;
    _data['vaccine_date2'] = vaccineDate2;
    _data['vaccine_provider'] = vaccineProvider;
    _data['certificate_image'] = certificateImage;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Nationality {
  Nationality({
    required this.name,
    required this.code,
  });
  late final String name;
  late final String code;

  Nationality.fromJson(Map<String, dynamic> json){
    name = json['name'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['code'] = code;
    return _data;
  }
}

class LastCoords {
  LastCoords({
    required this.long,
    required this.lat,
    required this.city,
    required this.cityAliases,
    required this.name,
    required this.searchName,
    required this.type,
    required this.country,
    required this.countryAliases,
    required this.countryCode,
    required this.timing,
  });
  late final int long;
  late final int lat;
  late final String city;
  late final List<dynamic> cityAliases;
  late final String name;
  late final String searchName;
  late final String type;
  late final String country;
  late final List<dynamic> countryAliases;
  late final String countryCode;
  late final int timing;

  LastCoords.fromJson(Map<String, dynamic> json){
    long = json['long'];
    lat = json['lat'];
    city = json['city'];
    cityAliases = List.castFrom<dynamic, dynamic>(json['city_aliases']);
    name = json['name'];
    searchName = json['search_name'];
    type = json['type'];
    country = json['country'];
    countryAliases = List.castFrom<dynamic, dynamic>(json['country_aliases']);
    countryCode = json['country_code'];
    timing = json['timing'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['long'] = long;
    _data['lat'] = lat;
    _data['city'] = city;
    _data['city_aliases'] = cityAliases;
    _data['name'] = name;
    _data['search_name'] = searchName;
    _data['type'] = type;
    _data['country'] = country;
    _data['country_aliases'] = countryAliases;
    _data['country_code'] = countryCode;
    _data['timing'] = timing;
    return _data;
  }
}

class AvailabilityDays {
  AvailabilityDays();

  AvailabilityDays.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}