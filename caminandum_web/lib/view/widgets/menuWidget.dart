import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => ZoomDrawer.of(context)!.toggle(),
      icon: Icon(
        Icons.notes,
        color: context.theme.primaryIconTheme.color,
      ),
    );
  }
}
