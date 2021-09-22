
import 'package:caminandum_web/model/pedometer/lastCoordinate.dart';

class UserModel{
  String ?id;
  LastCoordinate ?last_coords;
  int ?daily_step_count_goal;
  int ?weekly_step_count_goal;
  int ?monthly_step_count_goal;
  String ?created_at;
  String ?updated_at;

  UserModel({
     this.id,
     this.last_coords,
     this.daily_step_count_goal,
     this.weekly_step_count_goal,
     this.monthly_step_count_goal,
     this.created_at,
     this.updated_at});
  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        last_coords:json['last_coords'] != null ? LastCoordinate.fromJson(json['last_coords'])
        : null,
        daily_step_count_goal: json['daily_step_count_goal'],
        weekly_step_count_goal: json['weekly_step_count_goal'],
        monthly_step_count_goal: json['monthly_step_count_goal'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}


