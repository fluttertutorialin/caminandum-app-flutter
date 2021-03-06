import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/SignupScreen.dart';
import 'package:caminandum_web/views/custom_background_widget.dart';
import 'package:caminandum_web/views/widgets/OpenMenuScreen.dart';
import 'package:caminandum_web/views/widgets/widget_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginSignupOptionsScreen extends StatelessWidget {
  const LoginSignupOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController _themeController = Get.find<ThemeController>();

    return WidgetContainer(
      child: OpenMenuScreen(
        child: CustomBackgroundWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'caminandum',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: context.textTheme.headline6,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        "assets/images/photo-2.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Create an Account',
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    Get.to(() => SignupScreen());
                  },
                  color: context.theme.buttonTheme.colorScheme!.onPrimary,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "OR",
                      textAlign: TextAlign.center,
                      style: context.theme.textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: context.theme.textTheme.bodyText1!.copyWith(
                        color: context.theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      width: 2,
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  color: context.theme.buttonTheme.colorScheme!.primary,
                ),
                Expanded(flex: 1, child: SizedBox())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
