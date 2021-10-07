import 'package:caminandum_web/constants/images.dart';
import 'package:flutter/material.dart';


class NotificationListView extends StatelessWidget {
  const NotificationListView(
      {Key? key, this.avtar, this.title, this.iconAccept, this.iconDeclined,this.controller})
      : super(key: key);
  final avtar;
  final title;
  final iconAccept;
  final iconDeclined;
  final controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        onTap: controller.requestDetailsPage,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: FadeInImage(
            image: AssetImage(avtar),
            placeholder: AssetImage(Images.profile),
            fit: BoxFit.cover,
            height: 50.0,
            width: 50.0,
          ),
        ),
          title: Text(title,
            maxLines: 2,
          ),
        trailing: Icon(iconDeclined,
        color: Colors.white,
        ),
        ),
    );
  }
}
