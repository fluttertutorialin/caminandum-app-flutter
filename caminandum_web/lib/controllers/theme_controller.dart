import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class ThemeController extends GetxController {
  late bool _isWeb;

  bool isWeb() => _isWeb;

  @override
  onInit() async {
    _isWeb = kIsWeb;
    debugPrint("[ThemeController]:$_isWeb");
    _isWeb
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());

    if (!_isWeb) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
        ),
      );
    }
    super.onInit();
  }
}
