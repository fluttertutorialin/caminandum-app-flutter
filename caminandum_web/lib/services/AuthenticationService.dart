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


  
}