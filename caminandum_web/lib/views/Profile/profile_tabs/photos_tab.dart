import 'package:caminandum_web/controllers/profile_view_controller.dart';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PhotosTab extends StatefulWidget {
  @override
  _PhotosTabState createState() => _PhotosTabState();
}


class _PhotosTabState extends State<PhotosTab>
    with AutomaticKeepAliveClientMixin {
  final controller = Get.put(ProfileViewController());

  @override
  Widget build(BuildContext context) {

    super.build(context);
    return Center(
      child: Obx(() => Text(controller.firstNameController.value.text)),
    );
  }

  @override
  bool get wantKeepAlive => true;
}