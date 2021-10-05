import 'package:flutter/scheduler.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:get/get.dart';

class ThemeController extends GetxController {
  late bool _isWeb;

  @override
  onInit() async {
    _isWeb = kIsWeb;
    _isWeb
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());
    super.onInit();
  }
}
