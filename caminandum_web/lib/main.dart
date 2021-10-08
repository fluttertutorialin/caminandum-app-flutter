import 'package:caminandum_web/bindings/themeBinind.dart';
import 'package:caminandum_web/constants/themes.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:caminandum_web/view/pages/pedoMeterScreen.dart';
import 'package:caminandum_web/views/HomePage/home_page.dart';
import 'package:caminandum_web/views/LoginScreen.dart';
import 'package:caminandum_web/views/Profile/profile_view.dart';
import 'package:caminandum_web/views/SelectIntrest.dart';
import 'package:caminandum_web/views/StartScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import './bindings/radioBinind.dart';
import 'constants/menu_Items.dart';
import 'package:get_storage/get_storage.dart';
import 'controllers/AuthenticationController.dart';
import 'model/menu_Item.dart';
import 'view/pages/menu_screen.dart';
import 'view/pages/player_screen.dart';
import 'views/Bottom Tabs/bottom_bar_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RadioBinding().dependencies();
  ThemeBinding().dependencies();
  await GetStorage.init();
  if (!kIsWeb) final status = await Permission.activityRecognition.request();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeController _themeController = Get.find<ThemeController>();

    return GetMaterialApp(
      title: 'caminandum',
      debugShowCheckedModeBanner: false,
      darkTheme: Themes.dark,
      theme: Themes.light,
      themeMode: _themeController.isDark() ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // caminadum
  MenuItem currentItem = MenuItems.caminandum;

  @override
  void initState() {
    super.initState();
  }

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
            print("====> ${item.title}");
            setState(() {
              currentItem = item;



              ZoomDrawer.of(context)!.close();
            });
            //setState(() => currentItem = item);

          },
        ),
      ),
    );
  }

  Widget getScreen() {
    print("==> Menu Get screen call");
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
