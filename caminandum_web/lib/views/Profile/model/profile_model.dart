import 'package:flutter/material.dart';
import 'package:caminandum_web/views/Profile/profile_tabs/personal_view.dart';
import 'package:caminandum_web/views/Profile/profile_tabs/photos_tab.dart';

class ProfileModel {
  final String label;
  final Widget widget;
  late String imageName;
  static String assertPath = 'assets/profile_icon/';

  ProfileModel._(this.label, this.widget, String name) {
    imageName = assertPath + name;
  }

  static final ProfileModel _personal = ProfileModel._(
    'Personal',
    PersonalView(),
    'personal.png',
  );
  static final ProfileModel _photos = ProfileModel._(
    'Photos',
    PhotosTab(),
    'photos.png',
  );
  static final ProfileModel _sports = ProfileModel._(
    'Sports',
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blueGrey[300],
      ),
    ),
    'sports.png',
  );

  static final ProfileModel _lang = ProfileModel._(
    'Lang',
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blueGrey[300],
      ),
    ),
    'lang.png',
  );
  static final ProfileModel _calendar = ProfileModel._(
    'Calendar',
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blueGrey[300],
      ),
    ),
    'calendar.png',
  );
  static final ProfileModel _pref = ProfileModel._(
    'Pref',
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blueGrey[300],
      ),
    ),
    'pref.png',
  );

  static List<ProfileModel> items = [
    _personal,
    _photos,
    _sports,
    _lang,
    _calendar,
    _pref,
  ];
}
