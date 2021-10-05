import 'dart:async';
import 'dart:developer';

import 'package:caminandum_web/model/base/base.dart';
import 'package:caminandum_web/model/pedometer/AnonymousUser.dart';
import 'package:caminandum_web/model/user/user.dart';
import 'package:caminandum_web/model/user/userProfileResponse.dart';
import 'package:caminandum_web/services/AuthenticationService.dart';
import 'package:caminandum_web/services/api/retrofit_client.dart';
import 'package:caminandum_web/views/HomePage/home_page.dart';
import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/SelectIntrest.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationController extends GetxController {
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController,
      passwordController,
      firstNameController,
      lastNameController,
      userNameController;
  var email = "";
  var password = "";
  var firstName = "";
  var lastName = "";
  var userName = "";
  var agreed = true.obs;
  var isloading = false.obs as RxBool;

  final box = GetStorage();
  late UserProfileResponse signedInUser;

  var signupRes;

  void signupNewUser(String userNameS, String firstNameS, String lastNameS,
      String emailS, String passwordS) async {
    try {
      final res = await AuthenticationService.signupNewUser(
          firstNameS, lastNameS, emailS, passwordS);
      print('responce signup =>>>>>>>>>>>>>>>>>>>>>>>>>>>> $res');
    } catch (error) {
      print(error);
    }
  }

  loginUser(String emailL, String passwordL) async {
    try {
      final res = await AuthenticationService.loginUser(emailL, passwordL);
      print('responce login =>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $res');
    } catch (error) {
      print(error);
    }
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    userNameController = TextEditingController();
    // agreedConditionController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    userNameController.dispose();
    // agreedConditionController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email.";
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length < 8) {
      return "Password must be grater than 7 digits.";
    } else {
      return null;
    }
  }

  void checkSignup() {
    final isValid = signupFormKey.currentState!.validate();

    if (isValid) {
      try {
        isloading.value = true;
        UserProfile newSignIn = UserProfile(
            email: emailController.text,
            password: passwordController.text,
            firstName: firstNameController.text,
            lastName: lastNameController.text);

        RetrofitClientInstance.getInstance()
            .getDataService()
            .signUp(newSignIn)
            .then((value) {
              Get.snackbar("Registration", "successful");
          // Get.defaultDialog(
          //     title: "Registration successful, check your mail for"
          //         "verification link",
          //     onConfirm: () {
          //       Get.to(() => LoginScreen());
          //     });
        }).catchError(onError);
      } catch (e) {
        onError(e);
      }
    }
    signupFormKey.currentState!.save();
  }

  // bool? checkLogin() {
  //   final bool isValid = loginFormKey.currentState!.validate();
  //   final loggedIn = loginUser(emailController.text, passwordController.text);
  //   if (!isValid) {
  //     print('check2');
  //     return false;
  //   } else {
  //     print('check1');
  //
  //     loginFormKey.currentState!.save();
  //     return true;
  //   }
  // }
  void checkLogin() async {
    final isvalid = loginFormKey.currentState!.validate();

    try {
      if (isvalid) {
        isloading.value = true;
        //  AnonymousUser anonymousUser = AnonymousUser();
        UserProfile newLoggedIn = UserProfile(
            email: emailController.text, password: passwordController.text);

        RetrofitClientInstance.getInstance()
            .getDataService()
            .login(newLoggedIn)
            .then((value) {
          print(value.token.toString());
          onLoginResponse(value);
        }).catchError(onError);
        loginFormKey.currentState!.save();
      }
    } catch (e) {
      onError(e);
    }
  }

  Future<FutureOr> onLoginResponse(UserProfileResponse value) async {
    isloading.value = false;
    box.write("isFirstTime", false);
    RetrofitClientInstance.getInstance().setAuthToken(value.token.toString());
    signedInUser = value;
    if(box.read("isFirstTime") == false){
      Future(() {
        Get.to(() => HomePage());
      });
    }else{
      Future(() {
        Get.to(() => SelectIntrest());
      });

    }


  }

  onError(Object object) {
    isloading.value = false;
    if (object is DioError) {
      Get.snackbar("Hey", object.response!.data['msg']);
      print(object.response!.data['msg']);
    }
  }

  Future<void> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? account = await googleSignIn.signIn();

    if (account != null) {
      debugPrint("[Google-SignIn]");
      debugPrint(account.authentication.toString());
      debugPrint(account.authHeaders.toString());
      final GoogleSignInAuthentication googleSignInAuthentication =
          await account.authentication;
    }
  }
}
