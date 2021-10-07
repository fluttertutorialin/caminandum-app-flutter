import 'package:caminandum_web/services/api/retrofit_client.dart';
import 'package:get/get.dart';

class ConversationController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    getConversation();
  }

   //MY CONVERSATION GET THE DATA
  getConversation() {
    try {
      RetrofitClientInstance.getInstance().setAuthToken('');

      RetrofitClientInstance.getInstance()
          .getDataService()
          .getMyConversations(1, 10)
          .then((value) {
            print('Tag' + value.currentAvatar.toString());
      });
    } catch (e) {
      print(e);
    }
  }
}
