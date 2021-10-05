import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              left: 0,
              bottom: 0,
              child: SizedBox(
                child: ClipRect(
                  child: CustomPaint(
                    foregroundPainter: QuarterCirclePainter(
                      circleAlignment: CircleAlignment.topRight,
                      color: context.theme.primaryColor,
                    ),
                    child: Container(
                      color: context.theme.backgroundColor,
                      child: SafeArea(
                        child: Scaffold(
                          backgroundColor: context.theme.backgroundColor,
                          appBar: AppBar(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            bottomOpacity: 0.0,
                            elevation: 0.0,
                            leading: MenuWidget(),
                          ),
                          body: Column(
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
                                      // overflow: TextOverflow.ellipsis,
                                      style: context.textTheme.headline6,

                                      // style: const TextStyle(
                                      //   fontWeight: FontWeight.bold,
                                      //   fontSize: 40,
                                      //   fontFamily: "MontserratReg",
                                      //   letterSpacing: -3,
                                      // ),
                                    ),
                                  )),
                              Expanded(
                                flex: 4,
                                child: Image.asset("assets/images/Icon1.png"),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    // margin: EdgeInsets.all(20),
                                    child: Text(
                                      "Connecting people for outdoor Sports",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: "Mo-re-B",
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Container(
                                // ignore: deprecated_member_use
                                child: FlatButton(
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.white),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  onPressed: () {
                                    Get.to(SecondScreen());
                                  },
                                  color: context.theme.buttonTheme.colorScheme!
                                      .background,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 100),
                                ),
                              ),
                              Expanded(flex: 1, child: SizedBox())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuarterCirclePainter extends CustomPainter {
  final CircleAlignment circleAlignment;
  final Color color;

  const QuarterCirclePainter(
      {required this.circleAlignment, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.height, size.width / 2.8);
    canvas.drawCircle(
        Offset(size.width - 65, 45), radius, Paint()..color = color);
  }

  @override
  bool shouldRepaint(QuarterCirclePainter oldDelegate) {
    return color == oldDelegate.color &&
        circleAlignment == oldDelegate.circleAlignment;
  }
}
