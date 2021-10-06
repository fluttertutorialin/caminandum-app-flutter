import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/contact_notification_controller.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:caminandum_web/views/widgets/notification_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);
  var appBarIconSize;
final contactNotiController=Get.put(ContactNotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 25, horizontal: 5),
              child: GlobalAppBar(
                leftWidget: _appbarListIcon(),
                title: 'Notification',
                rightWidget: _searchIcon(),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 5),
                color: ColorPalette.colorDarkGrey,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NotificationListView(
                            controller: contactNotiController,
                            avtar: Images.profile,
                            title: "Cate wants to add you as a contact",
                            iconAccept: FontAwesomeIcons.check,
                            iconDeclined: Icons.close_sharp,
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appbarListIcon() {
    return GestureDetector(
      child: Icon(Icons.list,
          color: ColorPalette.colorOrange, size: appBarIconSize),
    );
  }

  Widget _searchIcon() {
    return GestureDetector(
      child: Icon(Icons.search,
          color: ColorPalette.colorOrange, size: appBarIconSize),
    );
  }
}
