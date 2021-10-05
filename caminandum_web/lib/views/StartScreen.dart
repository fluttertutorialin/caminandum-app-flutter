import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/SecondScreen.dart';
import 'package:caminandum_web/views/custom_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final AuthenticationController controller =
      Get.put(AuthenticationController());
  @override
  void initState() {
    if (controller.box.read('isFirstTime') == false) Get.to(LoginScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: SizedBox(),
          ),
          Expanded(
            flex: 0,
            child: Container(
              child: Text(
                'caminandum',
                textAlign: TextAlign.end,
                style: context.textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 31,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  border: Border.all(
                    width: 6,
                    color: context.theme.colorScheme.onPrimary,
                  ),
                ),
                child: Image.asset(
                  "assets/images/app_icon.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Center(
                child: Text("Connecting people for outdoor Sports",
                    textAlign: TextAlign.center,
                    style: context.theme.textTheme.subtitle1),
              )),
          Container(
            // ignore: deprecated_member_use
            child: FlatButton(
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
                Get.to(
                  SecondScreen(),
                );
              },
              color: context.theme.buttonTheme.colorScheme!.background,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 100,
              ),
            ),
          ),
          Expanded(flex: 1, child: SizedBox())
        ],
      ),
    );
  }
}
