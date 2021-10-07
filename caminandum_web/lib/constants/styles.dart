import 'package:caminandum_web/constants/colors.dart';
import 'package:flutter/material.dart';

///TextStyles
const kChatFirstNameStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    //  decoration: TextDecoration.none,
    color: ColorPalette.colorBlack);
const kLastChatMessageStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    //  decoration: TextDecoration.none,
    color: ColorPalette.colorBlack);

const kBoldTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: Colors.white);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
  ),
);
const kProfileTabTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    //  decoration: TextDecoration.none,
    color: ColorPalette.colorBlack);
const kChooseLangLevel = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 12,
  fontWeight: FontWeight.w400,
  //  decoration: TextDecoration.none,
  color: ColorPalette.colorBlack,
);
