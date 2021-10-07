import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:caminandum_web/views/custom_background_widget.dart';
import 'package:caminandum_web/views/widgets/OpenMenuScreen.dart';
import 'package:caminandum_web/views/widgets/theme_form_field_widget.dart/custom_text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final AuthenticationController controller =
      Get.put(AuthenticationController());
  bool isloading = false;

  Widget registerForm(
    BuildContext context,
    bool isDark,
  ) {
    return Column(
      children: [
        SizedBox(
          height: isDark ? 25 : 0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: context.theme.textTheme.subtitle1!,
            ),
            SizedBox(height: 8),
            CustomTextFormField(
              controller: controller.emailController,
              onSaved: (value) {
                controller.email = value!;
              },
              validator: (value) {
                return controller.validateEmail(value!);
              },
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Passowrd',
              style: context.theme.textTheme.subtitle1!,
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              controller: controller.passwordController,
              obscureText: true,
              onSaved: (value) {
                controller.password = value!;
              },
              validator: (value) {
                return controller.validatePassword(value!);
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeController _themeController = Get.find<ThemeController>();
    final isDark = _themeController.isDark();

    return OpenMenuScreen(
      child: CustomBackgroundWidget(
        childOnTap: true,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: controller.loginFormKey,
                      child: Container(
                        width: 400,
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              height:
                                  (MediaQuery.of(context).size.height) * 0.15,
                            ),
                            if (isDark)
                              SizedBox(
                                height: 35,
                              ),
                            Text(
                              "Welcome Back!",
                              textAlign: TextAlign.center,
                              style:
                                  context.theme.textTheme.subtitle1!.copyWith(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 30,
                              child: Text(
                                "Login To Your Account",
                                style:
                                    context.theme.textTheme.subtitle1!.copyWith(
                                  fontSize: 18.0,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            registerForm(context, isDark),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Obx(
                                () => FlatButton(
                                  child: controller.isloading.value == false
                                      ? Text(
                                          'Login',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white),
                                        )
                                      : Center(
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  onPressed: () {
                                    controller.checkLogin();
                                    //
                                  },
                                  color: context.theme.buttonTheme.colorScheme!
                                      .onSecondary,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      color:
                                          context.theme.colorScheme.onPrimary,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: Text(
                                      "Or Login With",
                                      style: context.theme.textTheme.subtitle1!
                                          .copyWith(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      color:
                                          context.theme.colorScheme.onPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Text(
                                  "forgot your password?   ",
                                  style: context.theme.textTheme.subtitle1!
                                      .copyWith(
                                    fontSize: 16.0,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => {},
                                  child: Text(
                                    "Click here.",
                                    style: context.theme.textTheme.subtitle1!
                                        .copyWith(
                                      fontSize: 16.0,
                                      color: context.theme.indicatorColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            SizedBox(
                              height: 45,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      debugPrint("Route to the FacebookLogin");
                                    },
                                    child: Image(
                                      image: AssetImage(
                                        "assets/login_icon/fb.png",
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    // Try Handing with the Google Auth
                                    onTap: () async {
                                      controller.signInWithGoogle();
                                    },
                                    child: Image(
                                      image: AssetImage(
                                        "assets/login_icon/google.png",
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      debugPrint("Route to the Apple Login");
                                    },
                                    child: Image(
                                      color: context.theme.colorScheme.primary,
                                      image: AssetImage(
                                        "assets/login_icon/apple.png",
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      debugPrint("Route to the Weibo Login");
                                    },
                                    child: Image(
                                      image: AssetImage(
                                        "assets/login_icon/weibo.png",
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      debugPrint("Route to the Wechat Login");
                                    },
                                    child: Image(
                                      image: AssetImage(
                                        "assets/login_icon/wechat.png",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
