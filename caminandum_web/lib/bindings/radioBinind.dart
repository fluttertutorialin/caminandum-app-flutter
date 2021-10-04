import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:get/instance_manager.dart';

import 'package:caminandum_web/controllers/radioController.dart';

class RadioBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RadioController>(RadioController());
    // Get.put<PedometerCobtroller>(PedometerCobtroller());

  }
}
