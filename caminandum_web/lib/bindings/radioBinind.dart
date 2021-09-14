import 'package:get/instance_manager.dart';

import '/controllers/radioController.dart';

class RadioBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RadioController>(RadioController());
  }
}
