import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            Icons.notifications_outlined,
            size: 30,
            color: Color(0XFFBE0C1C),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.alarm_on_outlined,
            size: 30,
            color: Color(0XFFBE0C1C),
          ),
        ),
      ],
    );
  }
}
