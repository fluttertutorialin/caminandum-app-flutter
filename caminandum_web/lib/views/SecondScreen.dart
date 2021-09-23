import 'package:caminandum_web/controllers/MainManuController.dart';
import 'package:caminandum_web/view/pages/menuScreen.dart';
import 'package:caminandum_web/views/ThirdScreen.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  // const SecondScreen({Key? key}) : super(key: key);
  final MainMenuController controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      angle: -10,
      borderRadius: 40,
      mainScreen: Scaffold(
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
                  flex: 4,
                  child: SizedBox(

                  ),
                ),
                Expanded(
                    flex:2,
                    child: Text(
                      'Sports Together',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          fontFamily: "MontserratReg",
                          letterSpacing: -3),
                    )),
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
                            child:Image.asset("assets/images/photo-1.png", height: 200,),
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
                      Get.to(() => ThirdScreen());
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
      ),
      slideWidth: MediaQuery.of(context).size.width * 0.80,
      showShadow: true,
      backgroundColor: Colors.orangeAccent,
      menuScreen: Builder(
        builder: (context) => MenuScreen(
          currentItem: controller.currentItem.value,
          onSelectedItem: (item) {
            print(item);
            controller.currentItem.value = item;
            ZoomDrawer.of(context)!.close();
          },
        ),
      ),
    );
  }
}