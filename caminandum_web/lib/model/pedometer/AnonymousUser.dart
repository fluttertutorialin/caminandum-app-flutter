import 'package:json_annotation/json_annotation.dart';
//part 'AnonymousUser.g.dart';

class AnonymousUser{
String id;
String token;
String refresh_token;

AnonymousUser({
  required this.id,
  required this.token,
  required this.refresh_token,
  });


}


