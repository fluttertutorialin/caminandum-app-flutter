import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class CustomColorScheme {
  IconThemeData? _darkIconThemeData;
  IconThemeData? _lightIconThemeData;

  Color? _darkBackgroundColor;
  Color? _lightBackgroundColor;

  Color? _darkSelectedIconColor;
  Color? _lightSelectedIconColor;

  Color? _darkUnSelectedIconColor;
  Color? _lightUnSelectedIconColor;

  TextStyle? _darkTextStyle;
  TextStyle? _lightTextStyle;

  bool isDarkMode() {
    return Get.find<ThemeController>().isDark();
  }

  IconThemeData iconThemeData() =>
      isDarkMode() ? _darkIconThemeData! : _lightIconThemeData!;
  Color backgroundColor() =>
      isDarkMode() ? _darkBackgroundColor! : _lightBackgroundColor!;
  TextStyle textStyle() => isDarkMode() ? _darkTextStyle! : _lightTextStyle!;
  Color selectedIconColor() =>
      isDarkMode() ? _darkSelectedIconColor! : _lightSelectedIconColor!;
  Color unSelectedIconColor() =>
      isDarkMode() ? _darkUnSelectedIconColor! : _lightUnSelectedIconColor!;

  static bool assertChecker(List<List> params) {
    bool _isValid = false;
    for (final themeset in params) {
      if (themeset[0] == null && themeset[1] == null) {
        continue;
      }
      if (themeset[0] != null || themeset[1] != null) {
        themeset[0] != null && themeset[1] != null
            ? _isValid = true
            : _isValid = false;
      }
      if (!_isValid) {
        break;
      }
    }
    return _isValid;
  }

  CustomColorScheme({
    IconThemeData? lightIconThemeData,
    IconThemeData? darkIconThemeData,
    Color? darkSelectedIconColor,
    Color? lightSelectedIconColor,
    TextStyle? darkTextStyle,
    TextStyle? lightTextStyle,
    Color? lightBackgroundColor,
    Color? darkBackgroundColor,
    Color? darkUnSelectedIconColor,
    Color? lightUnSelectedIconColor,
  }) : assert(
          assertChecker(
            [
              [lightIconThemeData, darkIconThemeData],
              [lightBackgroundColor, darkBackgroundColor],
              [lightTextStyle, darkTextStyle],
              [lightSelectedIconColor, darkSelectedIconColor],
              [lightUnSelectedIconColor, darkUnSelectedIconColor]
            ],
          )
              ? true
              : throw "[CustomColorScheme]: Missing Opposite Color",
        ) {
    _darkUnSelectedIconColor = darkUnSelectedIconColor;
    _lightUnSelectedIconColor = lightUnSelectedIconColor;

    _darkSelectedIconColor = darkSelectedIconColor;
    _lightSelectedIconColor = lightSelectedIconColor;

    _darkTextStyle = darkTextStyle;
    _lightTextStyle = lightTextStyle;

    _darkIconThemeData = darkIconThemeData;
    _lightIconThemeData = lightIconThemeData;

    _darkBackgroundColor = darkBackgroundColor;
    _lightBackgroundColor = lightBackgroundColor;
  }
}
