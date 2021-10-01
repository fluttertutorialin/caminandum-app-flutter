
import 'package:caminandum_web/model/user_model_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//
//     prefs.setString("id", user.id!);
//     prefs.setString("firstName", user.firstName);
//     prefs.setString("email", user.email);
//    prefs.setString("token", user.token);
// prefs.setString("avatar", user.avatar);
//
//     return prefs.commit();
//   }
//
//   Future<UserModel> getUser() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//
//     String? id = prefs.getString("id");
//     String? firstName = prefs.getString("name");
//     String? email = prefs.getString("email");
//     String? token = prefs.getString("roles");
//     String? avatar = prefs.getString("accessToken");
//
//
//     return UserModel(
//         userId: id,
//         firstName: firstName,
//         email: email,
//         token: token,
//         avatar:avatar,
//         );
//   }
//
//   void removeUser() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.remove("userId");
//     prefs.remove("name");
//     prefs.remove("email");
//     prefs.remove("phoneNumber");
//     prefs.remove("roles");
//     prefs.remove("accessToken");
//     prefs.remove("refreshToken");
//   }
//
//   Future<String> getAccessToken(args) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     String token = prefs.getString("token");
//     return token;
//   }
// }