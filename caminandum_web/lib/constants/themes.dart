import 'package:caminandum_web/constants/custom_color_scheme.dart';
import 'package:flutter/material.dart';

class Themes {
  static final poppinsText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  final tabAppBar = CustomColorScheme(
    lightBackgroundColor: Color(0xFFB4B1B1).withOpacity(0.35),
    darkBackgroundColor: Color(0xFFB4B1B1).withOpacity(0.35),
    lightSelectedIconColor: Colors.black,
    darkSelectedIconColor: Colors.black,
    lightUnSelectedIconColor: Colors.black,
    darkUnSelectedIconColor: Colors.grey.withOpacity(0.35),
  );

  final wPoppingsText = CustomColorScheme(
    darkTextStyle: poppinsText,
    lightTextStyle: poppinsText,
  );

  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black,
      labelPadding: EdgeInsets.all(0),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
        fontSize: 18,
      ),
    ),
    primaryColor: Colors.red,
    primaryColorDark: Colors.white,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        fontFamily: "MontserratReg",
        letterSpacing: -1.5,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontSize: 17.0,
        color: Colors.black,
      ),
      subtitle1: const TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontSize: 16,
        letterSpacing: -1.0,
      ),
    ),
    primaryIconTheme: IconThemeData(color: Color(0xFFF55D32)),
    indicatorColor: Color(0xFFF55D32),
    iconTheme: IconThemeData(),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFFF55D32),
      colorScheme: ColorScheme(
        primary: Colors.white,
        primaryVariant: Colors.black,
        secondary: Colors.black,
        secondaryVariant: Colors.black,
        surface: Colors.black,
        background: Color(0xFFF55D32),
        error: Colors.black,
        onPrimary: Color(0xFFF55D32),
        onSecondary: Color(0xFFF55D32),
        onSurface: Colors.black,
        onBackground: Color(0xFFF55D32),
        onError: Colors.black,
        brightness: Brightness.light,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      brightness: Brightness.light,
      secondary: Colors.white,
      onPrimary: Color(0xFFF55D32),
      primary: Colors.black,
      surface: Colors.white,
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
        fontSize: 18,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black,
      labelPadding: EdgeInsets.all(0),
    ),
    primaryColor: Colors.transparent,
    primaryColorDark: Colors.black,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        fontFamily: "MontserratReg",
        letterSpacing: -1.5,
      ),
      bodyText1: TextStyle(
        fontSize: 17.0,
        color: Colors.white,
      ),
      subtitle1: const TextStyle(
        color: Colors.white,
        fontFamily: "Poppins",
        fontSize: 16,
        letterSpacing: -1.0,
      ),
    ),
    primaryIconTheme: IconThemeData(color: Colors.white),
    indicatorColor: Colors.white,
    iconTheme: IconThemeData(),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFFF55D32),
      colorScheme: ColorScheme(
        primary: Colors.white,
        primaryVariant: Colors.white,
        secondary: Colors.white,
        secondaryVariant: Colors.white,
        surface: Colors.white,
        background: Color(0xFFF55D32),
        error: Colors.white,
        onPrimary: Color(0xFFF55D32),
        onSecondary: Color(0xFFFCB4A0),
        onSurface: Colors.white,
        onBackground: Color(0xFFF55D32),
        onError: Colors.white,
        brightness: Brightness.dark,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      brightness: Brightness.dark,
      secondary: Color(0xFFFCB4A0),
      onPrimary: Color(0xFFF55D32),
      primary: Colors.white,
      surface: Colors.black,
    ),
  );
}
