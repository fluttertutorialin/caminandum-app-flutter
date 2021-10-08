import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/styles.dart';
import 'package:caminandum_web/constants/themes.dart';
import 'package:caminandum_web/controllers/profile_view_controller.dart';
import 'package:caminandum_web/views/widgets/language_radio_button_group.dart';
import 'package:caminandum_web/views/widgets/theme_form_field_widget.dart/custom_text_form_field.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:image_picker/image_picker.dart';

class PersonalView extends StatefulWidget {
  @override
  _PersonalViewState createState() => _PersonalViewState();
}

enum LanguageSkillLevel { Low, Medium, High }

LanguageSkillLevel? _languageSkillLevel = LanguageSkillLevel.Low;

class _PersonalViewState extends State<PersonalView>
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

  // final TextEditingController firstNameController = TextEditingController();
  // final TextEditingController lastNameController = TextEditingController();
  // final TextEditingController bioController = TextEditingController();
  // final TextEditingController birthController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController phoneController = TextEditingController();
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
          physics: AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 175,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Column(
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
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side:
                                              BorderSide(color: Colors.red)))),
                              onPressed: () {},
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'COVID-19',
                                  style: Themes().wPoppingsText.textStyle(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Personal information',
                            style: context.textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              letterSpacing: 0,
                              fontStyle: FontStyle.normal,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final pd = constraints.maxWidth / 11;
                          return SizedBox(
                            height: constraints.maxHeight,
                            width: constraints.maxWidth,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  top: 6,
                                  left: 6,
                                  right: pd * 2.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      // showOverlayWidget
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
                                                      openGalleryCamera(
                                                          ImageSource.gallery,
                                                          context);
                                                    },
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0)),
                                                  GestureDetector(
                                                    child: Text("Camera"),
                                                    onTap: () {
                                                      openGalleryCamera(
                                                          ImageSource.camera,
                                                          context);
                                                    },
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/profile_icons/dummy_avatar.png',
                                      ),
                                      child: kIsWeb
                                          ? SizedBox()
                                          : Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Positioned(
                                                  left: pd,
                                                  right: pd,
                                                  bottom:
                                                      constraints.maxHeight /
                                                              4 -
                                                          pd,
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black87
                                                          .withOpacity(
                                                        0.10,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(pd),
                                                      ),
                                                    ),
                                                    height: 35,
                                                    child: Text(
                                                      "Upload",
                                                      style: Themes.poppinsText
                                                          .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                      radius: 60,
                                      backgroundColor: context
                                          .theme.colorScheme.primary
                                          .withOpacity(
                                        0.25,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: pd / 2,
                                  top: 0,
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Image(
                                      fit: BoxFit.fill,
                                      color: context.theme.colorScheme.primary,
                                      image: AssetImage(
                                        'assets/profile_icon/qr_code.png',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      // child: GestureDetector(
                      //   child: CircleAvatar(
                      //     backgroundImage: AssetImage(
                      //       'assets/profile_icons/dummy_avatar.png',
                      //     ),
                      //     child: Stack(
                      //       children: [
                      //         Positioned(
                      //           bottom: 0,
                      //           child: Text("Upload"),
                      //         ),
                      //       ],
                      //     ),
                      //     radius: 60,
                      //     backgroundColor:
                      //         context.theme.colorScheme.primary.withOpacity(0.25),
                      //   ),
                      //   onTap: () {
                      //     showDialog(
                      //       context: context,
                      //       builder: (BuildContext context) {
                      //         return AlertDialog(
                      //           title: Text("Select Photo Source"),
                      //           content: SingleChildScrollView(
                      //             child: ListBody(
                      //               children: <Widget>[
                      //                 GestureDetector(
                      //                   child: Text("Gallery"),
                      //                   onTap: () {
                      //                     // Navigator.pop(context);
                      //                     openGalleryCamera(
                      //                         ImageSource.gallery, context);
                      //                   },
                      //                 ),
                      //                 Padding(padding: EdgeInsets.all(8.0)),
                      //                 GestureDetector(
                      //                   child: Text("Camera"),
                      //                   onTap: () {
                      //                     openGalleryCamera(
                      //                         ImageSource.camera, context);
                      //                   },
                      //                 )
                      //               ],
                      //             ),
                      //           ),
                      //         );
                      //       },
                      //     );
                      //     //Navigator.pushNamed(context, AddNewCollectionScreen.id);
                      //   },
                      // ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30.0),
                padding: EdgeInsets.only(left: 20, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        'First Name',
                        style: context.theme.textTheme.subtitle1!.copyWith(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    SizedBox(
                      height: 42,
                      child: CustomTextFormField(
                        controller: profileViewController.firstNameController,
                        keyboardType: TextInputType.name,
                        onSaved: (value) =>
                            profileViewController.firstName = value!,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        'Last Name',
                        style: context.theme.textTheme.subtitle1!.copyWith(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    SizedBox(
                      height: 42,
                      child: CustomTextFormField(
                        controller: profileViewController.lastNameController,
                        keyboardType: TextInputType.name,
                        onSaved: (value) =>
                            profileViewController.lastName = value!,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        'Bio',
                        style: context.theme.textTheme.subtitle1!.copyWith(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: profileViewController.bioController,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      maxLength: null,
                      onSaved: (value) => profileViewController.bio = value!,
                      decoration: InputDecoration(
                        fillColor: Colors.white38,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blueGrey[800]!,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blueGrey[800]!,
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.yellow,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        'Birth date',
                        style: context.theme.textTheme.subtitle1!.copyWith(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 42,
                      child: TextField(
                        controller: profileViewController.birthController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        maxLength: null,
                        decoration: InputDecoration(
                          fillColor: Colors.white38,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.blueGrey[800]!,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.blueGrey[800]!,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                              width: 2,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.yellow,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        'Gender',
                        style: context.theme.textTheme.subtitle1!.copyWith(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: genderDropdown(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        'Phone',
                        style: context.theme.textTheme.subtitle1!.copyWith(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 42,
                      child: CustomTextFormField(
                        controller: profileViewController.phoneController,
                        keyboardType: TextInputType.phone,
                        onSaved: (value) =>
                            profileViewController.phone = value!,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(
                          () => (Switch(
                            value: profileViewController.disability.value,
                            onChanged: (val) {
                              profileViewController.disability.value = val;
                            },
                            activeColor: Color(0xFF877C7C),
                            inactiveTrackColor:
                                Color(0XFFC4C4C4).withOpacity(0.37),
                            inactiveThumbColor: Color(0xFFF88C3E),
                            activeTrackColor: Color(0xFFB9B4B4),
                          )),
                        ),
                        Text(
                          'Disability',
                          style: context.theme.textTheme.subtitle1!.copyWith(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who do you want to play sports with?',
                      style: context.theme.textTheme.subtitle1!.copyWith(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    SizedBox(
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => (Switch(
                              value: profileViewController.prefMen.value,
                              onChanged: (val) {
                                profileViewController.prefMen.value = val;
                              },
                              activeColor: Color(0xFF877C7C),
                              inactiveTrackColor:
                                  Color(0XFFC4C4C4).withOpacity(0.37),
                              inactiveThumbColor: Color(0xFFF88C3E),
                              activeTrackColor: Color(0xFFB9B4B4),
                            )),
                          ),
                          Text(
                            'Men',
                            style: context.theme.textTheme.subtitle1!.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Obx(
                            () => (Switch(
                              value: profileViewController.prefWomen.value,
                              onChanged: (val) {
                                profileViewController.prefWomen.value = val;
                              },
                              activeColor: Color(0xFF877C7C),
                              inactiveTrackColor:
                                  Color(0XFFC4C4C4).withOpacity(0.37),
                              inactiveThumbColor: Color(0xFFF88C3E),
                              activeTrackColor: Color(0xFFB9B4B4),
                            )),
                          ),
                          Text(
                            'Women',
                            style: context.theme.textTheme.subtitle1!.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Obx(
                            () => (Switch(
                              value: profileViewController.prefCouple.value,
                              onChanged: (val) {
                                profileViewController.prefCouple.value = val;
                              },
                              activeColor: Color(0xFF877C7C),
                              inactiveTrackColor:
                                  Color(0XFFC4C4C4).withOpacity(0.37),
                              inactiveThumbColor: Color(0xFFF88C3E),
                              activeTrackColor: Color(0xFFB9B4B4),
                            )),
                          ),
                          Text(
                            'Couple',
                            style: context.theme.textTheme.subtitle1!.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    SizedBox(
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => (Switch(
                              value: profileViewController.noPreference.value,
                              onChanged: (val) {
                                profileViewController.noPreference.value = val;
                              },
                              activeColor: Color(0xFF877C7C),
                              inactiveTrackColor:
                                  Color(0XFFC4C4C4).withOpacity(0.37),
                              inactiveThumbColor: Color(0xFFF88C3E),
                              activeTrackColor: Color(0xFFB9B4B4),
                            )),
                          ),
                          Text(
                            'NO preference',
                            style: context.theme.textTheme.subtitle1!.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 30.0),
                padding: EdgeInsets.only(left: 20, right: 40),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Nationality',
                        style: context.theme.textTheme.subtitle1!.copyWith(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      height: 42,
                      child: CustomTextFormField(
                        controller: profileViewController.nationalityController,
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (value) =>
                            profileViewController.nationality = value!,
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //   alignment: Alignment.centerLeft,
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: <Widget>[
              //       Text('Nationality'),
              //       Text('Type Address'),
              //       SizedBox(
              //         height: 50,
              //       ),
              //       Center(
              //         child: Container(
              //           width: 320,
              //           height: 120,
              //           margin: EdgeInsets.only(bottom: 30),
              //           padding: EdgeInsets.all(5),
              //           decoration: BoxDecoration(
              //             color: ColorPalette.colorLightGrey,
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.grey.withOpacity(0.5),
              //                 spreadRadius: 5,
              //                 blurRadius: 4,
              //                 offset:
              //                     Offset(0, 3), // changes position of shadow
              //               ),
              //             ],
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: <Widget>[
              //               Expanded(
              //                   child: Text(
              //                 'Activity Preferences (Sport fast)',
              //               )),
              //               Divider(),
              //               Column(
              //                 children: [
              //                   Slider(
              //                     activeColor: ColorPalette.colorBlack,
              //                     inactiveColor: ColorPalette.colorLightGrey,
              //                     value: _currentSliderValue,
              //                     min: 0,
              //                     max: 5,
              //                     divisions: 5,
              //                     label: _currentSliderValue.round().toString(),
              //                     onChanged: (double value) {
              //                       setState(() {
              //                         _currentSliderValue = value;
              //                       });
              //                     },
              //                   ),
              //                 ],
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //       Center(
              //           child: Text(
              //         'Languages you speak',
              //         style: kProfileTabTextStyle,
              //       )),
              //     ],
              //   ),
              // ),
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
