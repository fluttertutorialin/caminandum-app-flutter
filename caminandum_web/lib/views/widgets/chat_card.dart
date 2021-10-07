import 'package:caminandum_web/constants/styles.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class ChatCard extends StatelessWidget {
  final String? firstName;
  final String? lastMessage;

  final String? avatarURL;
  ChatCard({this.firstName, this.avatarURL, this.lastMessage});

  final ThemeController _themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    // final user = Provider.of<UserProvider>(context, listen: false);
    //final PostModel postData = InheritedPostModel.of(context).postData;
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: context.theme.appBarTheme.color!,
          border: Border.all(
              color: _themeController.isDark() ? Colors.white :  context.theme.appBarTheme.color!,
              width: 1.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                avatarURL!,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                firstName!,
                textAlign: TextAlign.left,
                style: context.textTheme.subtitle1!.copyWith(fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              Text(lastMessage!,
                  textAlign: TextAlign.left,
                  style: context.textTheme.subtitle1!.copyWith(fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,))
            ],
          ),
        ],
      ),
    );
  }
}
