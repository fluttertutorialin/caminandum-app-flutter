import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/styles.dart';
import 'package:flutter/material.dart';

class LanguageSelectionGroup extends StatefulWidget {
  final String? language;
  LanguageSelectionGroup({this.language});

  @override
  LanguageSelectionGroupState createState() => LanguageSelectionGroupState();
}

class LanguageSelectionGroupState extends State<LanguageSelectionGroup> {
  // Default Radio Button Selected Item When App Starts.
  String languageLevel = '';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 75,
          child: Row(
            children: <Widget>[
              Text(
                widget.language!,
                style: kChooseLangLevel,
              )
            ],
          ),
        ),
        Switch(
          value: false,
          onChanged: (val) {},
          activeColor: ColorPalette.colorBlack,
          inactiveThumbColor: Colors.black,
        ),
        Container(
          margin: EdgeInsets.only(right: 5),
          width: 17,
          child: Theme(
            data: ThemeData(unselectedWidgetColor: ColorPalette.colorOrange),
            child: Radio(
              activeColor: ColorPalette.colorOrange,
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  languageLevel = 'ONE';
                  id = 1;
                });
              },
            ),
          ),
        ),
        Text(
          'Low',
          style: kChooseLangLevel,
        ),
        SizedBox(width: 15,),
        Container(width: 17,
          margin: EdgeInsets.only(right: 5),
          child: Radio(
            value: 2,
            groupValue: id,
            onChanged: (val) {
              setState(
                () {
                  languageLevel = 'TWO';
                  id = 2;
                },
              );
            },
          ),
        ),
        Text(
          'Medium',
          style: kChooseLangLevel,
        ), SizedBox(width: 15,),
        Container(width: 17, margin: EdgeInsets.only(right: 5),
          child: Radio(
            value: 3,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                languageLevel = 'THREE';
                id = 3;
              });
            },
          ),
        ),
        Text(
          'High',
          style: kChooseLangLevel,
        ),
      ],
    );
  }
}
