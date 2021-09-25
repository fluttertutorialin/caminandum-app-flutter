import 'package:caminandum_web/model/pedometer/pedoCount.dart';

class PedometerGoals{
  PedoCount ?goals;
  String ?id;
  int ?is_anonymous;
  PedometerGoals({
    this.id,
    this.goals,
    this.is_anonymous
});
  PedometerGoals fromJson(Map<String, dynamic> json) {
    return PedometerGoals(
      id: json['id'],
      is_anonymous: json['is_anonymous'] == true ? 1:0,
      goals: json['goals'] != null ? PedoCount.fromJson(json['goals']): null
    );


  }

}