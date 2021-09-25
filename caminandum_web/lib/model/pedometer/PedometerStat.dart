
import 'package:caminandum_web/model/pedometer/pedoCount.dart';

class PedometerStat{
  String ?day;
  int ?distance_in_meters;
  String ?id;
  int ?step_count;
  String ?updated_at;
  String ?user_id;
  int ?activity_duration_seconds;
  String ?anonymous_id;
  int ?calories;
  String ?created_at;
  PedoCount ?current_goals;

  //current goals

PedometerStat({
  this.day,
  this.distance_in_meters,
  this.id,
  this.step_count,
  this.updated_at,
  this.created_at,
  this.activity_duration_seconds,
  this.anonymous_id,
  this.calories,
  this.user_id,
  this.current_goals});

  PedometerStat fromJson(Map<String, dynamic> json) {
    return PedometerStat(
        activity_duration_seconds: json['activity_duration_seconds'],
        anonymous_id:json['anonymous_id'],
        calories: json['calories'],
        created_at: json['created_at'],
        day: json['day'],
        distance_in_meters: json['distance_in_meters'],
        id: json['id'],
        step_count: json['step_count'],
        updated_at: json['updated_at'],
        user_id: json['user_id'],
        current_goals: json['current_goals'] != null ? PedoCount.fromJson(json['current_goals']):
        null,
    );
  }

}