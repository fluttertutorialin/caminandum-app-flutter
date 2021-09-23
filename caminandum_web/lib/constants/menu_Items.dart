// ignore: file_names
import 'package:flutter/material.dart';
import '../model/menu_Item.dart';

class MenuItems {
  static const caminandum = MenuItem('caminandum', Icons.app_registration);
  static const PlayerScreen = MenuItem('Radio', Icons.radio_rounded);
  static const Pedometer = MenuItem('Pedometer', Icons.settings_accessibility);
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
