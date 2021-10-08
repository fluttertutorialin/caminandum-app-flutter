import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

class ProfileViewController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  late TextEditingController firstNameController,
      lastNameController,
      bioController,
      birthController,
      phoneController,
      nationalityController;
  var firstName = "";
  var lastName = "";
  var bio = "";
  var birth = "";
  var phone = "";
  var nationality = "";
  PickedFile? pickedFile;

  var disability = false.obs;

  var prefMen = true.obs;
  var prefWomen = false.obs;
  var prefCouple = false.obs;
  var noPreference = false.obs;

  final box = GetStorage();

  void updateAvatar(PickedFile file) {
    pickedFile = file;
    update();
  }

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 5);
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    bioController = TextEditingController();
    birthController = TextEditingController();
    phoneController = TextEditingController();
    nationalityController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    bioController.dispose();
    birthController.dispose();
    phoneController.dispose();
    nationalityController.dispose();
  }
}
