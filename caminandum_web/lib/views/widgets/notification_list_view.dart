import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({Key? key,
      this.avtar,
      this.title,
      this.iconAccept,
      this.iconDeclined,
      this.controller,
      this.theme,
      required this.onTap
  }) : super(key: key);

  final avtar;
  final title;
  final iconAccept;
  final iconDeclined;
  final controller;
  final theme;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        onTap: onTap(),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: FadeInImage(
            image: NetworkImage('https://api.caminandum.com/'+avtar),
            placeholder: AssetImage(Images.profile),
            fit: BoxFit.cover,
            height: 50.0,
            width: 50.0,
          ),
        ),
        title:
            Text(title, maxLines: 2, style: context.theme.textTheme.subtitle1!),
        trailing: Icon(
          iconDeclined,
          color: theme ? ColorPalette.colorWhite : ColorPalette.colorBlack,
        ),
      ),
    );
  }
}
