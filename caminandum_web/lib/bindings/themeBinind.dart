import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:get/instance_manager.dart';

import 'package:caminandum_web/controllers/radioController.dart';

class ThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController());
  }
}
