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
