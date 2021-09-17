import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import '/controllers/radioController.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RadioController _radioController = Get.find<RadioController>();
    return IconButton(
        onPressed: () => ZoomDrawer.of(context)!.toggle(),
        icon: Icon(
          Icons.notes,
          color: _radioController.isDarkMode ? Colors.white : Colors.black,
        ));
  }
}
