import 'dart:developer';

import 'package:caminandum_web/model/base/base.dart';
import 'package:caminandum_web/model/error/error.dart';
import 'package:caminandum_web/model/pedometer/AnonymousUser.dart';
import 'package:caminandum_web/model/user/user.dart';
import 'package:caminandum_web/model/user/userProfileResponse.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'data_service.g.dart';

@RestApi()
abstract class GetDataService {
  factory GetDataService(Dio dio, {String baseUrl}) = _GetDataService;

  @POST("user/login")
  Future<UserProfileResponse> login(@Body() UserProfile userProfile);

  @MultiPart()
  @POST("user/signup")
  Future<Error> signUp(@Body() UserProfile userProfile);

  @GET("user/search")
  Future<Error> searchUser(@Body() UserProfile userProfile);

  @PUT("user/unblock-user")
  Future<Error> unblockUser(@Body() UserProfile userProfile);

  @POST("anonymous/user/create-token")
  Future<AnonymousUser> createAnonymousUser(@Body() AnonymousUser anonymousUser);

}