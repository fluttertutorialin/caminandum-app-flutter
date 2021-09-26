import 'dart:convert';

import 'package:caminandum_web/model/dummy_random_contacts_model.dart';
import 'package:http/http.dart' as http;

class RandomContactService {
  Future<DummyRandomContact> getRandomContacts() async {
    var client = http.Client();
    var randomContactModel;

    try {
      var response = await client.get(
        Uri.parse("https://randomuser.me/api/"),
      );
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);
        randomContactModel = DummyRandomContact.fromJson(jsonMap);
      }
    } catch (Exception) {
      return randomContactModel;
    }

    return randomContactModel;
  }
}
