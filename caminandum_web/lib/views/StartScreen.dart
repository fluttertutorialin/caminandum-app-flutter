import 'package:caminandum_web/views/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  // const StartScreen({Key? key}) : super(key: key);

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
                  child: SizedBox(

                   ),
                ),
                Expanded(
                    flex:1,
                    child: Text(
                  'Caminandum',
                  textAlign: TextAlign.end,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 44,
                      fontFamily: "MontserratReg",
                      letterSpacing: -3),
                )),
                Expanded(
                  flex: 7,
                  child: Image.asset("assets/images/Icon1.png"),
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
                                fontWeight: FontWeight.bold
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
                      Get.to(SecondScreen());
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
