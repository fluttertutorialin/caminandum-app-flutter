import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileViewController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  late TextEditingController firstNameController,
      lastNameController,
      bioController,
      birthDateController;
  PickedFile? pickedFile;
  var disability = false.obs;

  void updateAvatar(PickedFile file) {
    pickedFile = file;
    update();
  }

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 5);
    super.onInit();
  }
}
