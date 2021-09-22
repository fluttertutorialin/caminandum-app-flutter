import 'package:caminandum_web/services/AuthenticationService.dart';
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

  var signupRes;

  void signupNewUser() async {
    try {
      final res = await AuthenticationService.signupNewUser();
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
    var status = {
      "username": userNameController.text,
      "firstName": firstNameController.text,
      "lastname": lastNameController.text,
      "email": emailController.text,
      "password": passwordController.text
    };
    final isValid = signupFormKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    signupNewUser();
    signupFormKey.currentState!.save();
  }

  void checkLogin() {
    final isvalid = loginFormKey.currentState!.validate();
    if (!isvalid) {
      return;
    }
    loginUser(emailController.text, passwordController.text);
    loginFormKey.currentState!.save();
  }
}
