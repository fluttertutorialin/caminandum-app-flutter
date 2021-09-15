import 'package:caminandum_web/constants/menuItems.dart';
import 'package:caminandum_web/model/menuItem.dart';
import 'package:caminandum_web/view/pages/menuScreen.dart';
import 'package:caminandum_web/view/pages/pedoMeterScreen.dart';
import 'package:caminandum_web/view/pages/playerScreen.dart';
import 'package:caminandum_web/views/StartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class OpenMenuScreen extends StatefulWidget {
  const OpenMenuScreen({Key? key}) : super(key: key);

  @override
  _OpenMenuScreenState createState() => _OpenMenuScreenState();
}

class _OpenMenuScreenState extends State<OpenMenuScreen> {
  MenuItem currentItem = MenuItems.Pedometer;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      angle: -10,
      borderRadius: 40,
      mainScreen: getScreen(),
      slideWidth: MediaQuery.of(context).size.width * 0.80,
      showShadow: true,
      backgroundColor: Colors.orangeAccent,
      menuScreen: Builder(
        builder: (context) => MenuScreen(
          currentItem: currentItem,
          onSelectedItem: (item) {
            print(item);
            setState(() => currentItem = item);
            ZoomDrawer.of(context)!.close();
          },
        ),
      ),
    );
  }
  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.PlayerScreen:
        return PlayerScreen();

      case MenuItems.Pedometer:
        return PedoMeterScreen();

      case MenuItems.caminandum:
        return StartScreen();

      default:
        return PedoMeterScreen();
    }
  }
}
