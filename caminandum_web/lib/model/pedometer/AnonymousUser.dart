import 'package:caminandum_web/model/pedometer/User.dart';
import 'package:json_annotation/json_annotation.dart';
//part 'AnonymousUser.g.dart';

class AnonymousUser{
String ?id;
String ?token;
String ?refresh_token;
UserModel ?user;

AnonymousUser({
   this.id,
   this.token,
   this.refresh_token,
   this.user
  });
AnonymousUser fromJson(Map<String, dynamic> json) {
  return AnonymousUser(
      id: json['id'],
      token: json['token'],
      refresh_token: json['refresh_token'],
      user:json['user'] != null? UserModel().fromJson(json['user']):
  null);
}


}


