// ignore: file_names
import 'package:flutter/material.dart';
import '../model/menu_Item.dart';

class MenuItems {
  static const PlayerScreen = MenuItem('Radio', Icons.radio_rounded);
  static const Pedometer = MenuItem('Pedometer', Icons.settings_applications);
  static const caminandum = MenuItem('Caminandum', Icons.app_registration);
  static const home = MenuItem('Home', Icons.home);
  static const person = MenuItem('Profile', Icons.person);

  static const all = <MenuItem>[
    caminandum,
    PlayerScreen,
    Pedometer,
    home,
    person
  ];
}
