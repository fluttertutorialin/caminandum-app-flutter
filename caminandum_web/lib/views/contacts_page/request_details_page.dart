import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: ColorPalette.colorOrange,
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
                          onTap: (){
                            Get.back();
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: ColorPalette.colorWhite,
                            size: 35.0,
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.more_vert,
                          color: ColorPalette.colorWhite,
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
                        color: ColorPalette.colorBlack,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0)),
                      ),
                      child: Center(
                        child: Container(
                          height: 250.0,
                          decoration: BoxDecoration(
                              color: ColorPalette.colorBlack,
                              border: Border.all(
                                  width: 2.0, color: ColorPalette.colorWhite)),
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
                                      onTap: (){
                                        Get.back();
                                      },
                                      child: Icon(
                                        Icons.close,
                                        color: ColorPalette.colorWhite,
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
                                    "Accept Tasha?",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: ColorPalette.colorWhite,
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
                                        onTap: (){},
                                      ),
                                      ButtonWidget(
                                        title: 'Confirm',
                                        onTap: (){},
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
  ButtonWidget({Key? key, this.title, this.onTap}) : super(key: key);
  final title;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      //Wrap with Material
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 18.0,
      color: ColorPalette.colorWhite,
      clipBehavior: Clip.antiAlias,
      // Add This
      child: MaterialButton(
          minWidth: 150.0,
          height: 35,
          color: ColorPalette.colorWhite,
          child: new Text(title,
              style: new TextStyle(
                  fontSize: 16.0, color: ColorPalette.colorBlack)),
          onPressed: onTap),
    );
  }
}
