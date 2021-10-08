import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/controllers/MainManuController.dart';
import 'package:caminandum_web/main.dart';
import 'package:caminandum_web/view/pages/menuScreen.dart';
import 'package:caminandum_web/view/pages/pedoMeterScreen.dart';
import 'package:caminandum_web/view/pages/player_screen.dart';
import 'package:caminandum_web/views/StartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class OpenMenuScreen extends StatefulWidget {
  final child;
  OpenMenuScreen({Key? key, @required this.child}) : super(key: key);

  @override
  State<OpenMenuScreen> createState() => _OpenMenuScreenState();
}

class _OpenMenuScreenState extends State<OpenMenuScreen> {
  final MainMenuController controller = Get.put(MainMenuController());
  late Widget childWidget = this.widget.child;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      angle: -10,
      borderRadius: 40,
      mainScreen: childWidget,
      slideWidth: kIsWeb ? 225 : MediaQuery.of(context).size.width * 0.80,
      showShadow: true,
      backgroundColor: Colors.orangeAccent,
      menuScreen: Builder(
        builder: (context) => MenuScreen(
          currentItem: controller.currentItem.value,
          onSelectedItem: (item) {
            print("====> ${item.title}");

            setState(() {
              controller.currentItem.value = item;
              switch (controller.currentItem.value.title) {
                case "Pedometer":
                  childWidget = PedoMeterScreen();
                  break;
                default:
                  print("===> Invalid menu item");
                  break;
              }
              ZoomDrawer.of(context)!.close();
            });
          },
        ),
      ),
    );
  }
}
