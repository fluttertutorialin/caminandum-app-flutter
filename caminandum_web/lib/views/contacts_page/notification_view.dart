import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/contact_notification_controller.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:caminandum_web/views/contacts_page/request_details_page.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:caminandum_web/views/widgets/notification_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../custom_background_widget.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);
  var appBarIconSize;
  final contactNotificationController =
      Get.put(ContactNotificationController());
  ThemeController _themeController = Get.find<ThemeController>();

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
                color: _themeController.isDark()
                    ? ColorPalette.colorBlack
                    : ColorPalette.colorWhite,
                child: Obx(() => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount:
                        contactNotificationController.contactList!.length,
                    itemBuilder: (context, index) {
                      var request =
                          contactNotificationController.contactList![index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: NotificationListView(
                          onTap: () {
Get.snackbar("Notification", "In Progress");
                            // Get.to(RequestDetails(
                            //   image:request.profile!.avatar??"",
                            //   values: request.profile!??null,
                            //   id: request.id,
                            // ), fullscreenDialog: true);
                          },
                          controller: contactNotificationController.contactList,
                          avtar: request.profile!.avatar??"",
                          title: request.profile!.firstName ?? "",
                          iconAccept: FontAwesomeIcons.check,
                          iconDeclined: Icons.close_sharp,
                          theme: _themeController.isDark(),
                        ),
                      );
                    })),
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
