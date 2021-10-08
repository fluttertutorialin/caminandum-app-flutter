import 'package:caminandum_web/model/contact/contact_request.dart';
import 'package:caminandum_web/services/api/retrofit_client.dart';
import 'package:caminandum_web/views/contacts_page/request_details_page.dart';
import 'package:get/get.dart';

class ContactNotificationController extends GetxController{
  Rxn<List<Request>?> _contactRxList = Rxn<List<Request>?>([]);
  List<Request>? get contactList => _contactRxList.value;

  onInit(){
    super.onInit();
    print("Api Integrated");
    getRequestList();
  }

  getRequestList(){
    try{
      print("Task 1 completed");
      RetrofitClientInstance.getInstance().getDataService().getMyContactRequest('0').then((ContactRequest value) {
        _contactRxList.value = value.requests!;
      });
    }catch(e){
      print(e);
    }
  }


}