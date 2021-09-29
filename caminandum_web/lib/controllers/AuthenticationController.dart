import 'dart:async';
import 'dart:developer';

import 'package:caminandum_web/model/base/base.dart';
import 'package:caminandum_web/model/user/user.dart';
import 'package:caminandum_web/services/AuthenticationService.dart';
import 'package:caminandum_web/services/api/retrofit_client.dart';
import 'package:caminandum_web/views/SelectIntrest.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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


  var signupRes;

  void signupNewUser(String userNameS, String firstNameS, String lastNameS,
      String emailS, String passwordS) async {
    try {
      final res = await AuthenticationService.signupNewUser(
          userNameS, firstNameS, lastNameS, emailS, passwordS);
      print('responce signup =>>>>>>>>>>>>>>>>>>>>>>>>>>>> $res');
    } catch (error) {
      print(error);
    }
  }

  void loginUser(String emailL, String passwordL) async {
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
      try{
        isloading.value = true;
        UserProfile newSignIn = UserProfile(email:emailController.text,password:passwordController.text,
            firstName: firstNameController.text,lastName:lastNameController.text );
        RetrofitClientInstance.getInstance()
            .getDataService()
            .signUp(newSignIn)
            .then((value) {
          Get.to(() => SelectIntrest());
        } );
      }catch(e){
        onError(e);
      }
    }
    // signupNewUser(userNameController.text, firstNameController.text,
    //     lastNameController.text, emailController.text, passwordController.text);
    signupFormKey.currentState!.save();
  }

  void checkLogin() async{
    final isvalid = loginFormKey.currentState!.validate();
    if (isvalid) {
      isloading.value = true;
      UserProfile newLoggedIn = UserProfile(email:emailController.text,password:passwordController.text );
       try{
         var res = await RetrofitClientInstance.getInstance()
             .getDataService()
             .login(newLoggedIn)
         .then(onLoginResponse);
         // .catchError(onError);
            //debugger();

         // if(res.data!.firstName != null){
         //   Get.to(() => SelectIntrest());
         //
         // }
       } catch(e){
         onError(e);
       }
     // loginFormKey.currentState!.save();
    }

    }

  Future<FutureOr> onLoginResponse(BaseData<UserProfile> value) async{
    isloading.value = false;
  // print (value.data!.firstName);
    if ( value.data != null) {

    }
  }

  onError(Object object) {
   isloading.value = false;
    if(object is DioError){
      Get.snackbar("Hey", object.response!.data['msg']);
      print(object.response!.data['msg']);
    }
  }
}
