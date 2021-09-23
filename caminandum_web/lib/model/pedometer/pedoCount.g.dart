// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedoCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PedoCount _$PedoCountFromJson(Map<String, dynamic> json) {
  return PedoCount(
    monthly_step_count_goal: json['monthly_step_count_goal'] as int?,
    weekly_step_count_goal: json['weekly_step_count_goal'] as int?,
    daily_step_count_goal: json['daily_step_count_goal'] as int?,
  );
}

Map<String, dynamic> _$PedoCountToJson(PedoCount instance) => <String, dynamic>{
      'daily_step_count_goal': instance.daily_step_count_goal,
      'monthly_step_count_goal': instance.monthly_step_count_goal,
      'weekly_step_count_goal': instance.weekly_step_count_goal,
    };
