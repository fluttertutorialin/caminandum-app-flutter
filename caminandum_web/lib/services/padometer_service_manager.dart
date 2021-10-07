import 'dart:convert';

import 'package:caminandum_web/model/pedometer/todayinfo_model.dart';
import 'package:caminandum_web/view/pages/pedoMeterScreen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart' as http;

class PedometerServiceManager {

  static var client = http.Client();
  static final baseUrl = "https://api.caminandum.com";
  static final apiVersion = "/api/v1/";
  // bearer
  Map<String, String> authHeaders = {
    "Authorization": "$sAuthToken",
    "contentTypeHeader": "application/json"
  };

  Future<TodayInfoResponse> getTodayInfo({currencyPair: String, bool isBaseAmount = false, String amount = 'undefined'}) async {
    final sURL = baseUrl + apiVersion + "pedometer/today-stats";
    var fetchData = TodayInfoResponse();
    try {

      print("--> URL: $sURL");
      print("--> PARAMS: ${authHeaders.toString()}");

      final response = await http.get(Uri.parse(sURL),headers: authHeaders).timeout(Duration(seconds: 60));

      print("--> RESPONSE: ${response.body}");
      print("--> STATUS CODE: ${response.statusCode}");

      if (response.statusCode == 200) {

        fetchData = TodayInfoResponse.fromJson(jsonDecode(response.body));

      } else {
        fetchData = TodayInfoResponse.fromJson(jsonDecode(response.body));
        Get.snackbar("Hey", fetchData.msg.toString());

      }
    } catch (e) {
      print("API --> getCurrencyList: Failed to load data");
      Get.snackbar("Hey", "Something went wrong");
    }

    return fetchData;

  }

}