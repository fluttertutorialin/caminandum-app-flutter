import 'package:caminandum_web/model/dummy_random_contacts_model.dart';
import 'package:caminandum_web/services/random_contacts/add_contacts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var statusVaccine = true.obs;
  var statusGroup = true.obs;

  // List View
  var isChangeViewToList = true.obs;
  // Grid View
  var isChangeViewToGrid = false.obs;
  // 3 Grid View
  var isChangeViewToGridView = false.obs;

  // Future model of random contacts
  List<RandomContactModel> contactList = <RandomContactModel>[].obs;

  //Future<DummyRandomContacts>? dummyRandomContact;
  @override
  void onInit() {
    getDummyRandomContacts();
    super.onInit();
  }

  void getDummyRandomContacts() async {
    try {
      var dummyRandomContact = await RandomContactService().getRandomContacts();

      contactList = dummyRandomContact;
    } catch (e) {
      print('check: $e');
    }
  }

  onChangeViewToList() {
    isChangeViewToList(true);
    isChangeViewToGridView(false);
    isChangeViewToGrid(false);
    update();
  }

  onChangeViewToGridView() {
    isChangeViewToList(false);
    isChangeViewToGridView(true);
    isChangeViewToGrid(false);
    update();
  }

  onChangeViewToGrid() {
    isChangeViewToList(false);
    isChangeViewToGridView(false);
    isChangeViewToGrid(true);
    update();
  }
}
