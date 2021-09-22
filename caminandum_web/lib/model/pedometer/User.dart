
import 'package:caminandum_web/model/pedometer/lastCoordinate.dart';



class UserModel{
  String id;
  LastCoordinate last_coords;
  int daily_step_count_goal;
  int weekly_step_count_goal;
  int monthly_step_count_goal;
  String created_at;
  String updated_at;

  UserModel({
    required this.id,
    required this.last_coords,
    required this.daily_step_count_goal,
    required this.weekly_step_count_goal,
    required this.monthly_step_count_goal,
    required this.created_at,
    required this.updated_at});
}
