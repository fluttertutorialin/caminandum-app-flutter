import 'package:caminandum_web/controllers/MainManuController.dart';
import 'package:caminandum_web/view/pages/menuScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

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
