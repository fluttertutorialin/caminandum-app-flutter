import 'package:flutter/material.dart';
import '/model/menuItem.dart';

class MenuItems {
  static const PlayerScreen = MenuItem('Radio', Icons.radio_rounded);
  static const Pedometer = MenuItem('Pedometer', Icons.settings_accessibility);
  static const caminandum = MenuItem("Caminandum", Icons.app_registration);

  static const all = <MenuItem>[
    caminandum,
    PlayerScreen,
    Pedometer,
  ];
}