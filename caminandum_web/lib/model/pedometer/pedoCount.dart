import 'package:json_annotation/json_annotation.dart';
part 'pedoCount.g.dart';


@JsonSerializable()
class PedoCount{
  int ?daily_step_count_goal;
  int ?monthly_step_count_goal;
  int ?weekly_step_count_goal;
  PedoCount({
    this.monthly_step_count_goal,
    this.weekly_step_count_goal,
    this.daily_step_count_goal
});

  factory PedoCount.fromJson(Map<String, dynamic> json) =>
      _$PedoCountFromJson(json);

  Map<String, dynamic> toJson() => _$PedoCountToJson(this);
}