import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonColor: Colors.blue,
  );

  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    textTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
    primaryColor: Colors.white,
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
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.white,
            onBackground: Color(0xFFF55D32),
            onError: Colors.white,
            brightness: Brightness.dark)),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFF55D32)),
  );
}


// context.theme.backgroundColor