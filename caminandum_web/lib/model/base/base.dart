import 'dart:developer';

import 'package:caminandum_web/model/error/error.dart';
import 'package:caminandum_web/model/user/userProfileResponse.dart';
import 'package:json_annotation/json_annotation.dart';
part 'base.g.dart';

@JsonSerializable()
class BaseData<T> {
  @_Converter()
  T ?data;
  String msg;
  List<String> warnings;

  BaseData(this.data, this.msg, this.warnings);

  factory BaseData.fromJson(Map<String, dynamic> json) =>
      _$BaseDataFromJson(json);
  Map<String, dynamic> toJson() => _$BaseDataToJson(this);
}

class _Converter<T> implements JsonConverter<T, Object> {
  const _Converter();

  @override
  T fromJson(Object json) {
    //debugger();
    T ?data;
    if (json == null) return data!;
     else {
      if (json is Map<String, dynamic> &&
          json.containsKey('gender') &&
          json.containsKey('nationality') &&
          json.containsKey('first_name') &&
          json.containsKey('last_name') &&
          json.containsKey("vaccineProvider"))
        return UserProfileResponse.fromJson(json) as T;

      else if(json is Map<String, dynamic> &&
          json.containsKey('msg') &&
          json.containsKey('warnings')){
        data = ResMessage.fromJson(json) as T;
        return ResMessage.fromJson(json) as T;}
    }
    return data!;
  }

  @override
  Object toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object!;
  }
}
