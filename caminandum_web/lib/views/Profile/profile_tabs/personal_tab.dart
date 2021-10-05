import 'dart:io';

import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/styles.dart';
import 'package:caminandum_web/controllers/profile_view_controller.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:caminandum_web/views/widgets/flutter_toast.dart';
import 'package:caminandum_web/views/widgets/language_radio_button_group.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PersonalTab extends StatefulWidget {
  @override
  PersonalTabState createState() => PersonalTabState();
}

enum LanguageSkillLevel { Low, Medium, High }

LanguageSkillLevel? _languageSkillLevel = LanguageSkillLevel.Low;

class PersonalTabState extends State<PersonalTab>
    with AutomaticKeepAliveClientMixin {
  final profileViewController = Get.put(
    ProfileViewController(),
  );
  PickedFile? pickedFile;

  ///access camera/gallery
  void openGalleryCamera(ImageSource source, BuildContext context) async {
    //  //Navigator.pop(context);
    //
    //  final picture = await ImagePicker().pickImage(source: source);
    //  setState(() {
    // //   pickedFile = File(picture.path);
    //  });
    //
    //
    //
    //  profileViewController.updateAvatar(pickedFile!);
    //  if (picture != null) {
    //    print('not null');
    //
    //    File imageFile = File(picture!.path);
    //
    //    Navigator.pop(context);
    //    // return Image.file(imageFile, width: 500, height: 500);
    //
    //    // setState(() {
    //    //   showLoader = false;
    //    // });
    //  } else {
    //    print('check:pickedFile null');
    //  }
    //  Navigator.of(context).pop();
    //  displayToast('Please try again');
  }

  final fieldLabelWidth = 90.0;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final List<String> genderList = ['Male', 'Female', 'Special'];
  String selectedGender = 'Special';

  double _currentSliderValue = 2;
  //drop down button to choose male or femal
  DropdownButton<String> genderDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String gender in genderList) {
      var newItem = DropdownMenuItem(
        child: Text(gender),
        value: gender,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedGender,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedGender = value!;
        });
      },
    );
  }

  List<String> languageList = [
    'English',
    'Francais',
    'Espanol',
    'Valenciano',
    'Svenska',
    ',Deutsche',
    'Netherlands',
    'Italiano',
    'PyckNN',
    'Romana',
    'Germany',
    'Kiswahili',
    'Germany'
  ];

  Widget? langugageSelectionGroupWidget() {
    List<LanguageSelectionGroup> languageSelectionGroupWidget = [];
    for (String language in languageList) {
      languageSelectionGroupWidget.add(LanguageSelectionGroup(
        language: language,
      ));
    }

    return Column(
      children: languageSelectionGroupWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 44,
                        width: 204,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorPalette.colorOrange),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {},
                          child: Text('COVID-19', style: kBoldTextStyle),
                        ),
                      ),
                      Text(
                        'Personal information',
                        style: kChatFirstNameStyle,
                      )
                    ],
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/profile_icons/dummy_avatar.png'),
                        radius: 60,
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Select Photo Source"),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Text("Gallery"),
                                      onTap: () {
                                        // Navigator.pop(context);
                                        openGalleryCamera(
                                            ImageSource.gallery, context);
                                      },
                                    ),
                                    Padding(padding: EdgeInsets.all(8.0)),
                                    GestureDetector(
                                      child: Text("Camera"),
                                      onTap: () {
                                        openGalleryCamera(
                                            ImageSource.camera, context);
                                      },
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                        //Navigator.pushNamed(context, AddNewCollectionScreen.id);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 2),
                padding: EdgeInsets.only(left: 20, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: fieldLabelWidth,
                      child: Text(
                        'First Name',
                        style: kChatFirstNameStyle.copyWith(
                            color: ColorPalette.colorBlack, fontSize: 14),
                      ),
                    ),
                    TextField(
                      controller: firstNameController,
                      keyboardType: TextInputType.name,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                    ),
                    Container(
                      width: fieldLabelWidth,
                      child: Text(
                        'Username',
                        style: kChatFirstNameStyle.copyWith(
                            color: ColorPalette.colorBlack, fontSize: 14),
                      ),
                    ),
                    TextField(
                      controller: firstNameController,
                      keyboardType: TextInputType.name,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                    ),
                    Container(
                      width: fieldLabelWidth,
                      child: Text(
                        'Website',
                        style: kChatFirstNameStyle.copyWith(
                            color: ColorPalette.colorBlack, fontSize: 14),
                      ),
                    ),
                    TextField(
                      controller: firstNameController,
                      keyboardType: TextInputType.name,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                    ),
                    Container(
                      width: fieldLabelWidth,
                      child: Text(
                        'Bio',
                        style: kChatFirstNameStyle.copyWith(
                            color: ColorPalette.colorBlack, fontSize: 14),
                      ),
                    ),
                    TextField(
                      controller: bioController,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      maxLength: null,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: fieldLabelWidth,
                      child: Text(
                        'Phone',
                        style: kChatFirstNameStyle.copyWith(
                            color: ColorPalette.colorBlack, fontSize: 14),
                      ),
                    ),
                    TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                    ),
                    Container(
                      width: fieldLabelWidth,
                      child: Text(
                        'Gender',
                        style: kChatFirstNameStyle.copyWith(
                            color: ColorPalette.colorBlack, fontSize: 14),
                      ),
                    ),
                    genderDropdown(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: ColorPalette.colorLightGrey,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => (Switch(
                                value: profileViewController.disability.value,
                                onChanged: (val) {
                                  profileViewController.disability.value = val;
                                },
                                activeColor: ColorPalette.colorBlack,
                                inactiveThumbColor: Colors.black,
                              ))),
                          Text('Disability'),
                          Container(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    Text('Who do you want to play sports with?'),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Nationality'),
                    Text('Type Address'),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Container(
                        width: 320,
                        height: 120,
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: ColorPalette.colorLightGrey,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child:
                                    Text('Activity Preferences (Sport fast)')),
                            Divider(),
                            Column(
                              children: [
                                Slider(
                                  // thumbColor: ColorPalette.colorOrange,
                                  activeColor: ColorPalette.colorBlack,
                                  inactiveColor: ColorPalette.colorLightGrey,
                                  value: _currentSliderValue,
                                  min: 0,
                                  max: 5,
                                  divisions: 5,
                                  label: _currentSliderValue.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      'Languages you speak',
                      style: kProfileTabTextStyle,
                    )),
                  ],
                ),
              ),
              langugageSelectionGroupWidget()!
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
