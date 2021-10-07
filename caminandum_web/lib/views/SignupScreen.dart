import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:caminandum_web/views/custom_background_widget.dart';
import 'package:caminandum_web/views/widgets/OpenMenuScreen.dart';
import 'package:caminandum_web/views/widgets/theme_form_field_widget.dart/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/theme_form_field_widget.dart/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  final AuthenticationController controller =
      Get.put(AuthenticationController());

  Widget registerForm(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.24,
        ),
        Text(
          "Create an Account",
          style: context.theme.textTheme.subtitle1!.copyWith(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name', style: context.theme.textTheme.subtitle1!),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              controller: controller.firstNameController,
              onSaved: (value) {
                controller.firstName = value!;
              },
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Last Name', style: context.theme.textTheme.subtitle1!),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              controller: controller.lastNameController,
              onSaved: (value) {
                controller.lastName = value!;
              },
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username', style: context.theme.textTheme.subtitle1!),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              controller: controller.userNameController,
              onSaved: (value) {
                controller.userName = value!;
              },
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password', style: context.theme.textTheme.subtitle1!),
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
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email', style: context.theme.textTheme.subtitle1!),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              controller: controller.emailController,
              onSaved: (value) {
                controller.email = value!;
              },
              validator: (value) {
                return controller.validateEmail(value!);
              },
            ),
          ],
        ),
        Row(
          children: [
            Obx(
              () => Checkbox(
                activeColor: context.theme.colorScheme.onPrimary,
                checkColor: context.theme.colorScheme.primary,
                value: controller.agreed.value,
                onChanged: (bool? value) {
                  controller.agreed.value = !controller.agreed.value;
                },
              ),
            ),
            Text(
              "Agreed with terms of use.",
              style: context.textTheme.subtitle1!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return OpenMenuScreen(
      child: Scaffold(
        body: CustomBackgroundWidget(
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: controller.signupFormKey,
                        child: Container(
                          width: 400,
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              registerForm(context),
                              FlatButton(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  print('hello world from signup');
                                  controller.checkSignup();
                                  // Get.to(() => SignupScreen());
                                },
                                color: context
                                    .theme.buttonTheme.colorScheme!.onSecondary,
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 50,
                                ),
                              ),
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
      ),
    );
  }
}
