import 'package:caminandum_web/controllers/profile_view_tabs_controllers/photos_tab_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PhotosTab extends StatefulWidget {
  @override
  _PhotosTabState createState() => _PhotosTabState();
}


class _PhotosTabState extends State<PhotosTab>
    with AutomaticKeepAliveClientMixin {
  final controller = Get.put(PhotosTabController());

  @override
  Widget build(BuildContext context) {

    super.build(context);
    return Center(
      child: Obx(() => Text(controller.bike.value)),
    );
  }

  @override
  bool get wantKeepAlive => true;
}