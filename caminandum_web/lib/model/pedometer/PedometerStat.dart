// To parse this JSON data, do
//
//     final pedometerStat = pedometerStatFromJson(jsonString);

import 'dart:convert';

PedometerStat pedometerStatFromJson(String str) => PedometerStat.fromJson(json.decode(str));

String pedometerStatToJson(PedometerStat data) => json.encode(data.toJson());

class PedometerStat {
  PedometerStat({
    this.activityDurationSeconds,
    this.anonymousId,
    this.calories,
    this.createdAt,
    this.currentGoals,
    this.day,
    this.distanceInMeters,
    this.id,
    this.stepCount,
    this.updatedAt,
    this.userId,
  });

  int ?activityDurationSeconds;
  String ?anonymousId;
  int ?calories;
  String ?createdAt;
  CurrentGoals ?currentGoals;
  String ?day;
  int ?distanceInMeters;
  String ?id;
  int ?stepCount;
  String ?updatedAt;
  String ?userId;

  factory PedometerStat.fromJson(Map<String, dynamic> json) => PedometerStat(
    activityDurationSeconds: json["activity_duration_seconds"],
    anonymousId: json["anonymous_id"],
    calories: json["calories"],
    createdAt: json["created_at"],
    currentGoals: CurrentGoals.fromJson(json["current_goals"]),
    day: json["day"],
    distanceInMeters: json["distance_in_meters"],
    id: json["id"],
    stepCount: json["step_count"],
    updatedAt: json["updated_at"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "activity_duration_seconds": activityDurationSeconds,
    "anonymous_id": anonymousId,
    "calories": calories,
    "created_at": createdAt,
    "current_goals": currentGoals!.toJson(),
    "day": day,
    "distance_in_meters": distanceInMeters,
    "id": id,
    "step_count": stepCount,
    "updated_at": updatedAt,
    "user_id": userId,
  };
}

class CurrentGoals {
  CurrentGoals({
    this.dailyStepCountGoal,
    this.monthlyStepCountGoal,
    this.weeklyStepCountGoal,
  });

  int ?dailyStepCountGoal;
  int ?monthlyStepCountGoal;
  int ?weeklyStepCountGoal;

  factory CurrentGoals.fromJson(Map<String, dynamic> json) => CurrentGoals(
    dailyStepCountGoal: json["daily_step_count_goal"],
    monthlyStepCountGoal: json["monthly_step_count_goal"],
    weeklyStepCountGoal: json["weekly_step_count_goal"],
  );

  Map<String, dynamic> toJson() => {
    "daily_step_count_goal": dailyStepCountGoal,
    "monthly_step_count_goal": monthlyStepCountGoal,
    "weekly_step_count_goal": weeklyStepCountGoal,
  };
}
