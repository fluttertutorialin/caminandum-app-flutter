import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        fontFamily: "MontserratReg",
        letterSpacing: -3,
      ),
    ),
    primaryColor: Colors.white,
    primaryIconTheme: IconThemeData(color: Color(0xFFF55D32)),
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
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.white,
            onBackground: Color(0xFFF55D32),
            onError: Colors.white,
            brightness: Brightness.dark)),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFF55D32)),
  );

  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      // color: Colors.black,
      foregroundColor: Colors.black,
      backgroundColor: Colors.black,
    ),
    // scaffoldBackgroundColor: Colors.black,
    // brightness: Brightness.dark,

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

    iconTheme: IconThemeData(
        // color: Colors
        ),
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
            brightness: Brightness.dark)),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        brightness: Brightness.light,
        secondary: Color(0xFFFCB4A0),
        onPrimary: Color(0xFFF55D32),
        primary: Colors.black,
        surface: Colors.black),
  );
}
