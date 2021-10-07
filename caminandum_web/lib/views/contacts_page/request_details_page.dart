import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

class RequestDetails extends StatelessWidget {
  RequestDetails({Key? key}) : super(key: key);
  ThemeController _themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: !_themeController.isDark()
            ? ColorPalette.colorWhite
            : ColorPalette.colorOrange,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: !_themeController.isDark()
                                ? ColorPalette.colorBlack
                                : ColorPalette.colorWhite,
                            size: 35.0,
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.more_vert,
                          color: !_themeController.isDark()
                              ? ColorPalette.colorBlack
                              : ColorPalette.colorWhite,
                          size: 35.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 7,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 78),
                      decoration: BoxDecoration(
                        color: _themeController.isDark()
                            ? ColorPalette.colorBlack
                            : ColorPalette.colorWhite,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0)),
                      ),
                      child: Center(
                        child: Container(
                          height: 250.0,
                          decoration: BoxDecoration(
                              color: _themeController.isDark()
                              ? ColorPalette.colorBlack
                              : ColorPalette.colorWhite,
                            border: Border.all(
                                width: 2.0, color: ColorPalette.colorWhite),
                              boxShadow:_themeController.isDark()?[]: [new BoxShadow(
                                color:  ColorPalette.colorWhite,
                                blurRadius: 50.0,
                              ),]

                          ),
                          child: Card(
                           color: _themeController.isDark()
                                ? ColorPalette.colorBlack
                                : ColorPalette.colorWhite,
                            elevation: 5.0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: !_themeController.isDark()
                                              ? ColorPalette.colorBlack
                                              : ColorPalette.colorWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Accept Tasha ?",
                                      style: context.theme.textTheme.subtitle1!
                                          .copyWith(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ButtonWidget(
                                          title: 'Cancel',
                                          onTap: () {},
                                          controller: _themeController.isDark(),
                                        ),
                                        ButtonWidget(
                                          title: 'Confirm',
                                          onTap: () {},
                                          controller: _themeController.isDark(),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: AssetImage(Images.userProfile),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  ButtonWidget({Key? key, this.title, this.onTap, this.controller})
      : super(key: key);
  final title;
  final onTap;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      //Wrap with Material
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 18.0,
      color: controller ? ColorPalette.colorWhite : ColorPalette.colorBlack,
      clipBehavior: Clip.antiAlias,
      // Add This
      child: MaterialButton(
          minWidth: 150.0,
          height: 35,
          child: new Text(title,
              style: TextStyle(
                fontSize: 16.0,
                color: controller
                    ? ColorPalette.colorBlack
                    : ColorPalette.colorWhite,
              )),
          onPressed: onTap),
    );
  }
}
