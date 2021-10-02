// To parse this JSON data, do
//
//     final updatePedometerGoals = updatePedometerGoalsFromJson(jsonString);

import 'dart:convert';

UpdatePedometerGoals updatePedometerGoalsFromJson(String str) => UpdatePedometerGoals.fromJson(json.decode(str));

String updatePedometerGoalsToJson(UpdatePedometerGoals data) => json.encode(data.toJson());

class UpdatePedometerGoals {
  UpdatePedometerGoals({
    this.dailyStepCountGoal,
    this.monthlyStepCountGoal,
    this.weeklyStepCountGoal,
  });

  int ?dailyStepCountGoal;
  int ?monthlyStepCountGoal;
  int ?weeklyStepCountGoal;

  factory UpdatePedometerGoals.fromJson(Map<String, dynamic> json) => UpdatePedometerGoals(
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
