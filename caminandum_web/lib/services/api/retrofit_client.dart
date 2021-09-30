import 'package:caminandum_web/services/api/data_service.dart';
import 'package:dio/dio.dart';

class RetrofitClientInstance {
  static RetrofitClientInstance _instance = RetrofitClientInstance._internal();
  Dio _dio = Dio();
  late GetDataService _client ;

  RetrofitClientInstance._internal([String authToken = '']){
    //_dio = Dio();
    _dio.options.responseType = ResponseType.json;
    _dio.options.headers["accept"] = "application/json";
    _dio.options.headers["Authorization"] =
    authToken?.isEmpty == true ? '' : 'Bearer $authToken';
    _dio.options.connectTimeout = (3 * 60 * 1000);
    _dio.interceptors.add(
        LogInterceptor(responseBody: true, requestBody: true));

    _client = GetDataService(_dio, baseUrl: "https://api.caminandum.com/api/v1/");
  }


  static RetrofitClientInstance getInstance() {
    return _instance;
  }

  GetDataService getDataService() {
    return _client;
  }

  void setAuthToken(String authToken) {
    _instance = RetrofitClientInstance._internal(authToken);
  }
}
