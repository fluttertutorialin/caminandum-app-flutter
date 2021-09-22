import 'package:caminandum_web/constants/menuItems.dart';
import 'package:caminandum_web/controllers/MainManuController.dart';
import 'package:caminandum_web/model/menuItem.dart';
import 'package:caminandum_web/view/pages/menuScreen.dart';
import 'package:caminandum_web/view/pages/pedoMeterScreen.dart';
import 'package:caminandum_web/view/pages/playerScreen.dart';
import 'package:caminandum_web/views/StartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

// class OpenMenuScreen extends StatefulWidget {

//
//   @override
//   _OpenMenuScreenState createState() => _OpenMenuScreenState();
// }

class OpenMenuScreen extends StatelessWidget {
  final child;
  OpenMenuScreen({Key? key, @required this.child}) : super(key: key);

  final MainMenuController controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      angle: -10,
      borderRadius: 40,
      mainScreen: child,
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
