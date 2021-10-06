import 'package:caminandum_web/views/contacts_page/request_details_page.dart';
import 'package:get/get.dart';

class ContactNotificationController extends GetxController{


  requestDetailsPage(){
    Get.to(RequestDetails(),fullscreenDialog: true);
  }
}