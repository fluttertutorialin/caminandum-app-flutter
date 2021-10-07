class TodayInfoResponse {
  int ?activityDurationSeconds;
  String ?anonymousId;
  int ?calories;
  Coordinates ?coordinates;
  String ?createdAt;
  CurrentGoals ?currentGoals;
  String ?day;
  int ?distanceInMeters;
  String ?id;
  int ?stepCount;
  String ?updatedAt;
  String ?userId;
  String ?msg;

  TodayInfoResponse(
      {this.activityDurationSeconds,
        this.anonymousId,
        this.calories,
        this.coordinates,
        this.createdAt,
        this.currentGoals,
        this.day,
        this.distanceInMeters,
        this.id,
        this.stepCount,
        this.updatedAt,
        this.userId,
        this.msg});

  TodayInfoResponse.fromJson(Map<String, dynamic> json) {
    activityDurationSeconds = json['activity_duration_seconds'];
    anonymousId = json['anonymous_id'];
    calories = json['calories'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    createdAt = json['created_at'];
    currentGoals = json['current_goals'] != null
        ? new CurrentGoals.fromJson(json['current_goals'])
        : null;
    day = json['day'];
    distanceInMeters = json['distance_in_meters'];
    id = json['id'];
    stepCount = json['step_count'];
    updatedAt = json['updated_at'];
    userId = json['user_id'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity_duration_seconds'] = this.activityDurationSeconds;
    data['anonymous_id'] = this.anonymousId;
    data['calories'] = this.calories;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates?.toJson();
    }
    data['created_at'] = this.createdAt;
    if (this.currentGoals != null) {
      data['current_goals'] = this.currentGoals?.toJson();
    }
    data['day'] = this.day;
    data['distance_in_meters'] = this.distanceInMeters;
    data['id'] = this.id;
    data['step_count'] = this.stepCount;
    data['updated_at'] = this.updatedAt;
    data['user_id'] = this.userId;
    data['msg'] = this.msg;
    return data;
  }
}

class Coordinates {
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

  Coordinates(
      {this.city,
        this.cityAliases,
        this.country,
        this.countryAliases,
        this.countryCode,
        this.lat,
        this.long,
        this.name,
        this.searchName,
        this.timing,
        this.type});

  Coordinates.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    cityAliases = json['city_aliases'].cast<String>();
    country = json['country'];
    countryAliases = json['country_aliases'].cast<String>();
    countryCode = json['country_code'];
    lat = json['lat'];
    long = json['long'];
    name = json['name'];
    searchName = json['search_name'];
    timing = json['timing'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['city_aliases'] = this.cityAliases;
    data['country'] = this.country;
    data['country_aliases'] = this.countryAliases;
    data['country_code'] = this.countryCode;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['name'] = this.name;
    data['search_name'] = this.searchName;
    data['timing'] = this.timing;
    data['type'] = this.type;
    return data;
  }
}

class CurrentGoals {
  int ?dailyStepCountGoal;
  int ?monthlyStepCountGoal;
  int ?weeklyStepCountGoal;

  CurrentGoals(
      {this.dailyStepCountGoal,
        this.monthlyStepCountGoal,
        this.weeklyStepCountGoal});

  CurrentGoals.fromJson(Map<String, dynamic> json) {
    dailyStepCountGoal = json['daily_step_count_goal'];
    monthlyStepCountGoal = json['monthly_step_count_goal'];
    weeklyStepCountGoal = json['weekly_step_count_goal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['daily_step_count_goal'] = this.dailyStepCountGoal;
    data['monthly_step_count_goal'] = this.monthlyStepCountGoal;
    data['weekly_step_count_goal'] = this.weeklyStepCountGoal;
    return data;
  }
}