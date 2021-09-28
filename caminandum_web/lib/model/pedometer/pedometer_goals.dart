// To parse this JSON data, do
//
//     final pedometerGoals = pedometerGoalsFromJson(jsonString);

import 'dart:convert';

PedometerGoals pedometerGoalsFromJson(String str) => PedometerGoals.fromJson(json.decode(str));

String pedometerGoalsToJson(PedometerGoals data) => json.encode(data.toJson());

class PedometerGoals {
  PedometerGoals({
    this.goals,
    this.id,
    this.isAnonymous,
  });

  Goals ?goals;
  String ?id;
  bool ?isAnonymous;

  factory PedometerGoals.fromJson(Map<String, dynamic> json) => PedometerGoals(
    goals: Goals.fromJson(json["goals"]),
    id: json["id"],
    isAnonymous: json["is_anonymous"],
  );

  Map<String, dynamic> toJson() => {
    "goals": goals!.toJson(),
    "id": id,
    "is_anonymous": isAnonymous,
  };
}

class Goals {
  Goals({
    this.dailyStepCountGoal,
    this.monthlyStepCountGoal,
    this.weeklyStepCountGoal,
  });

  int ?dailyStepCountGoal;
  int ?monthlyStepCountGoal;
  int ?weeklyStepCountGoal;

  factory Goals.fromJson(Map<String, dynamic> json) => Goals(
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
