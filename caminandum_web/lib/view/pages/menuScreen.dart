import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '/constants/menuItems.dart';
import '/controllers/radioController.dart';
import '/model/menuItem.dart';

class MenuScreen extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuScreen(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    RadioController _radioController = Get.find<RadioController>();

    return Theme(
      data: _radioController.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        backgroundColor: Color(0xFFE26F03),
        body: SafeArea(
          child: Column(
            children: [
              Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem Item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selected: currentItem == Item,
          selectedTileColor: Colors.black26,
          minLeadingWidth: 20,
          leading: Icon(Item.icon),
          title: Text(Item.title),
          onTap: () => onSelectedItem(Item),
        ),
      );
}
