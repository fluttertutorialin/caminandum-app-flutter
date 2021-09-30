import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/SecondScreen.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
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
    print(controller.box.read('isFirstTime'));
    if(controller.box.read('isFirstTime') == false) Get.to(LoginScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height ,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Caminandum-screen.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
              children:<Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height* 0.25,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(200)),
                      // color: Colors.blue
                    ),
                    child: CustomPaint(
                     // foregroundPainter: CirclePainter(),
                    ),
                  ),
                ),
                Column(
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
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                fontFamily: "MontserratReg",
                                letterSpacing: -3),
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
                      child: FlatButton(
                        child: Text(
                          'Continue',
                          style: TextStyle(fontSize: 17.0, color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {

                          Get.to(SecondScreen());
                        },
                        color: Color(0xFFF55D32),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                      ),
                    ),
                    Expanded(flex: 1, child: SizedBox())
                  ],
                ),
              ]

          ),
        ),
      ),
    );
  }
}

