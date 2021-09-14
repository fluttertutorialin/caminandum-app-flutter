import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareIconWidgets extends StatefulWidget {
  const ShareIconWidgets({Key? key}) : super(key: key);

  @override
  _ShareIconWidgetsState createState() => _ShareIconWidgetsState();
}

class _ShareIconWidgetsState extends State<ShareIconWidgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.share_outlined,
              color: Color(0XFFBE0C1C),
              size: 30,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
            top: 20,
          ),
          child: Icon(
            Icons.edit_outlined,
            color: Color(0XFFBE0C1C),
            size: 30,
          ),
        )
      ],
    );
  }
}
