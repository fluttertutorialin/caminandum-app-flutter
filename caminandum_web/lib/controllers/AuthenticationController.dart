import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  final GlobalKey<FormState>signupFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = "";
  var password = "";

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {

    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email.";
    }else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if(value.length<8) {
      return "Password must be grater than 7 digits.";
    } else{
      return null;
    }
  }

  void checkSignup() {
    final isValid= signupFormKey.currentState!.validate();

    if(!isValid){
      return;
    }
    signupFormKey.currentState!.save();
  }
}