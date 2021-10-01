// To parse this JSON data, do
//
//     final updatePedometerStat = updatePedometerStatFromJson(jsonString);

import 'dart:convert';

UpdatePedometerStat updatePedometerStatFromJson(String str) => UpdatePedometerStat.fromJson(json.decode(str));

String updatePedometerStatToJson(UpdatePedometerStat data) => json.encode(data.toJson());

class UpdatePedometerStat {
  UpdatePedometerStat({
    this.activityDurationSeconds,
    this.calories,
    this.date,
    this.distanceInMeters,
    this.stepCount,
  });

  int ?activityDurationSeconds;
  int ?calories;
  String ?date;
  int ?distanceInMeters;
  int ?stepCount;

  factory UpdatePedometerStat.fromJson(Map<String, dynamic> json) => UpdatePedometerStat(
    activityDurationSeconds: json["activity_duration_seconds"],
    calories: json["calories"],
    date: json["date"],
    distanceInMeters: json["distance_in_meters"],
    stepCount: json["step_count"],
  );

  Map<String, dynamic> toJson() => {
    "activity_duration_seconds": activityDurationSeconds,
    "calories": calories,
    "date": date,
    "distance_in_meters": distanceInMeters,
    "step_count": stepCount,
  };
}
