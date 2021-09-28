import 'package:caminandum_web/model/base/base.dart';
import 'package:caminandum_web/model/user/user.dart';
import 'package:caminandum_web/model/user/userProfileResponse.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'data_service.g.dart';

@RestApi()
abstract class GetDataService {
  factory GetDataService(Dio dio, {String baseUrl}) = _GetDataService;

  @POST("user/login")
  Future<BaseData<UserProfile>> login(@Body() UserProfile userProfile);

  @MultiPart()
  @POST("auth/register")
  Future<BaseData<UserProfile>> signUp(@Body() UserProfile userProfile);

}