import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'LoginSignupOptionsScreen.dart';

class  ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                  flex:3,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Welcome to Caminandum',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          fontFamily: "MontserratReg",
                          letterSpacing: -2),
                    ),
                  )),
              Row(children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('We are a market place dedicated to'
                        ' connecting people who want to do'
                        ' outdoor sports through an app'
                        ' that also offers services for the purchase'
                        ' of activities ,both sports and adventure',
                      textAlign: TextAlign.center,
                      style: const TextStyle( fontFamily: "MontserratReg", fontSize: 16, fontWeight: FontWeight.bold ),
                    )
                )
              ],
              ),
              Expanded(
                flex:6,
                child:Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          // color: Colors.redAccent,
                          // margin:EdgeInsets.symmetric(horizontal: 50.0),
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          // ),
                          child:Image.asset("assets/images/Rectangle83.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex:1,
                  child: Container(
                    // margin: EdgeInsets.all(20),
                    child: Text(
                      "Connecting people for outdoor Sports",
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
                  child: Text('Continue', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    print('hello world');
                    Get.to(() => LoginSignupOptionsScreen());
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
