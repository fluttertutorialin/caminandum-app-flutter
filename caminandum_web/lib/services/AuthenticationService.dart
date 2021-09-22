import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class AuthenticationService {
  static var client = http.Client();
  static var baseUrl = "https://api.caminandum.com";

  static Future signupNewUser() async {
    var url =  baseUrl + "/api/v1/user/signup";
    var data = {"first_name": "kapil", "last_name": "Kapoor", "email": "k@s.com", "password": "1234567"};
    try {
      final res = await client.post(Uri.parse(url), body: data);
      print(res);
      return res;
    } catch (error) {
      print(error);
      // return error.message;
    }
    return "Raj Kapoor";
  }

  static Future loginUser(String email, String password) async {
    var url = baseUrl + "/api/v1/user/login";

    var data  = {
      "email": email,
      "password": password
    };

    try {
      final res =  await http.post(Uri.parse("https://api.caminandum.com/api/v1/user/login"), body: jsonEncode(data),headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },);
      if(res.statusCode == 200)
        {
          return res.body;
        } else {
        print("<===================error=================== Authserv40/40>");
        print(res.body);
        print("<===================error=================== Authserv40/42>");
        return res.statusCode;
      }
    } catch (error) {
      print("<===================error===================> $error");
      return error;
    }
  }
  
}