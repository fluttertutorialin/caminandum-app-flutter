import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/SignupScreen.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  LoginSignupOptionsScreen extends StatelessWidget {
  const LoginSignupOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Caminandum-screen.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment : MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Expanded(
                  flex:2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'caminandum',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                          fontFamily: "MontserratReg",
                          letterSpacing: -2),
                    ),
                  )),
              // Row(children: <Widget>[
              //   Container(
              //       width: MediaQuery.of(context).size.width,
              //       padding: EdgeInsets.symmetric(horizontal: 25),
              //       child: Text('We are a market place dedicated to'
              //           ' connecting people who want to do'
              //           ' outdoor sports through an app'
              //           ' that also offers services for the purchase'
              //           ' of activities ,both sports and adventure',
              //         textAlign: TextAlign.center,
              //         style: const TextStyle( fontFamily: "MontserratReg", fontSize: 16, fontWeight: FontWeight.bold ),
              //       )
              //   )
              // ],
              // ),
              Expanded(
                flex:6,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(40.0),
                        height: 305,
                        width: 390,

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          // color: Colors.redAccent,
                          // margin:EdgeInsets.symmetric(horizontal: 50.0),
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          // ),
                          child:Image.asset("assets/images/photo-2.png", height: 305, width: 275, fit: BoxFit.fill),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                child: FlatButton(
                  child: Text('Create an Account', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    print('hello world');
                    Get.to(() => SignupScreen());
                  },
                  color: Color(0xFFF55D32),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                ),
              ),
              Expanded(
                  flex:1,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "OR",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Mo-re-B",
                        fontSize: 17,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),
              Container(
                child: FlatButton(
                  child: Text('Login', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    print('hello world');
                    Get.to(() => LoginScreen());
                  },
                  color: Color(0xFFF55D32),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                ),
              ),
              Expanded(flex:1,child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
