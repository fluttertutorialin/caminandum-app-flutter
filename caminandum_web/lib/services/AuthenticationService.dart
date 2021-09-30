import 'dart:convert';

//import 'package:caminandum_web/model/pedometer/User.dart';
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

    var data = {"email": email, "password": password};

    try {
      final res = await http.post(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (res.statusCode == 200) {
        var jsonString = res.body;

   //     return UserModel().fromJson(jsonDecode(jsonString));
      } else {
        print("<===================error=================== Authserv40/40>");
        print(res.body);
        print("<===================error=================== Authserv40/42>");
        return res.body;
      }
    } catch (error) {
      print("<===================error===================> $error");
      return error;
    }
  }
}
