// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseData<T> _$BaseDataFromJson<T>(Map<String, dynamic> json) {
  return BaseData<T>(
    _Converter<T?>().fromJson(json['data'] as Object),
    json['msg'] as String,
    (json['warnings'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$BaseDataToJson<T>(BaseData<T> instance) =>
    <String, dynamic>{
      'data': _Converter<T?>().toJson(instance.data),
      'msg': instance.msg,
      'warnings': instance.warnings,
    };
