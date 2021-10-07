import 'package:caminandum_web/constants/themes.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class ThemeController extends GetxController {
  late bool _isWeb;
  late bool _isDark;

  // bool isWeb() => _isWeb;
  bool isDark() => _isDark;

  @override
  onInit() async {
    _isWeb = kIsWeb;
    _isDark = true;
    debugPrint("[ThemeController]:$_isDark");
    _isDark ? Get.changeTheme(ThemeData.dark()) : Get.changeTheme(Themes.light);
    // Get.changeTheme(ThemeData.light());
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: _isDark ? Colors.black : Colors.white,
        statusBarIconBrightness: _isDark ? Brightness.light : Brightness.dark,
      ),
    );
    super.onInit();
  }
}
