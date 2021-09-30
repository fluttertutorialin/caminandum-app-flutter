import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/Profile/profile_view.dart';
import 'package:caminandum_web/views/StartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:pedometer/pedometer.dart';
import './bindings/radioBinind.dart';
import 'constants/menu_Items.dart';
import 'model/menu_Item.dart';
import 'view/pages/menu_screen.dart';
import 'view/pages/pedometerscreen.dart';
import 'view/pages/player_screen.dart';
import 'views/Bottom Tabs/bottom_bar_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RadioBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'caminandum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),

home: BottomBarView()
//const HomeScreen(),

//HomeScreen(),

    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        return const PlayerScreen();

      case MenuItems.Pedometer:
        return const PedoMeterScreen();

      case MenuItems.caminandum:
        return const StartScreen();

      case MenuItems.home:
        return const BottomBarView();

      case MenuItems.person:
        return ProfileView();

      default:
        return const PedoMeterScreen();
    }
  }
}
