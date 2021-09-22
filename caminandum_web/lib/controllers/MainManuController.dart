import 'package:caminandum_web/constants/menuItems.dart';
import 'package:caminandum_web/model/menuItem.dart';
import 'package:caminandum_web/view/pages/pedoMeterScreen.dart';
import 'package:caminandum_web/view/pages/playerScreen.dart';
import 'package:caminandum_web/views/StartScreen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  Rx<MenuItem> currentItem = MenuItems.Pedometer.obs;
  var flag = true.obs;

  Widget getScreen() {
    switch (currentItem.value) {
      case MenuItems.PlayerScreen:
        return PlayerScreen();

      case MenuItems.Pedometer:
        return PedoMeterScreen();

      case MenuItems.caminandum:
        // Get.to(() => StartScreen());
        return StartScreen();

      default:
        return PedoMeterScreen();
    }
  }
}
