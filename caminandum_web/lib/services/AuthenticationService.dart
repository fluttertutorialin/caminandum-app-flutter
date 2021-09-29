import 'dart:convert';

import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/model/pedometer/User.dart';
import 'package:caminandum_web/model/user_model_main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthenticationService {
  static var client = http.Client();
  static var baseUrl = "https://api.caminandum.com";

  static Future signupNewUser(
      String firstName, String lastName, String email, String password) async {
    var data = {
      "first_name": firstName,
      "email": email,
      "last_name": lastName,
      "password": password,
    };
    print(data);
    var url = baseUrl + "/api/v1/user/signup";
    try {
      final res = await client.post(Uri.parse(url),
          body: jsonEncode(data),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      print(res.body);
      return res.body;
    } catch (error) {
      print(error);
      return error;
    }
  }

  static Future loginUser(String email, String password) async {
    var url = baseUrl + "/api/v1/user/login";

    Map data = {"email": email, "password": password};
print('check5');print(url);print('check6');
    final UserModelMain user;
    try {
      final res = await http.post(
        Uri.parse(url),
        body:data,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );
      if (res.statusCode == 200) {
        print('check 1 OK');

        var jsonString = res.body;
        user = userModelMainFromJson(jsonString);

        return user;
      } else {
        print('check 2 NOT Ok');
        print('check: status code is ${res.statusCode}');
        return '';
      }
    } catch (error) {
      print("<===================error===================> $error");
      return error;
    }
  }
}
