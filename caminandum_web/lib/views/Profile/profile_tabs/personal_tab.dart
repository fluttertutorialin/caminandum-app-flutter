import 'package:caminandum_web/controllers/profile_view_tabs_controllers/personal_tab_controller.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalTab extends StatefulWidget {
  @override
  _personal_tabState createState() => _personal_tabState();
}

class _personal_tabState extends State<PersonalTab>
    with AutomaticKeepAliveClientMixin {
  final controller = Get.put(PersonalTabController());

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[Text('yo')],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
