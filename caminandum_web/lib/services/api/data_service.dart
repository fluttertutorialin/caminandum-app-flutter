import 'dart:developer';


import 'package:caminandum_web/model/base/base.dart';
import 'package:caminandum_web/model/contact/contact_request.dart';
import 'package:caminandum_web/model/contact/direct_contact_request.dart';
import 'package:caminandum_web/model/contact/request_model.dart';
import 'package:caminandum_web/model/contact/send_contact_req.dart';
import 'package:caminandum_web/model/error/error.dart';
import 'package:caminandum_web/model/pedometer/AnonymousUser.dart';
import 'package:caminandum_web/model/pedometer/PedometerStat.dart';
import 'package:caminandum_web/model/pedometer/pedometer_goals.dart';
import 'package:caminandum_web/model/user/add_location.dart';
import 'package:caminandum_web/model/user/get_my_user_model.dart';
import 'package:caminandum_web/model/user/near_user.dart';
import 'package:caminandum_web/model/user/near_user_home_api.dart';
import 'package:caminandum_web/model/user/update_pedometer_goals.dart';
import 'package:caminandum_web/model/user/update_pedometer_stat.dart';
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
  Future<AnonymousUser> createAnonymousUser(
    @Body() AnonymousUser anonymousUser,
  );
  @GET("me")
  Future<GetMyUserModel> getMyUserProfile(@Body() UserProfile userProfile);

  @GET("pedometer/month-stats")
  Future<PedometerStat> getThisMonthPedometerStat(@Body() PedometerStat pedometerStat);

  @PUT("pedometer/stats")
  Future<PedometerStat> updatePedometerStat(@Body() UpdatePedometerStat updatePedometerStat);

  @GET("pedometer/today-stats")
  Future<PedometerStat> todayPedometerStat(@Body() UpdatePedometerStat updatePedometerStat);

  @PUT("pedometer/today-stats")
  Future<PedometerStat> updateTodaysStat(@Body() UpdatePedometerStat updatePedometerStat);

  @PUT("pedometer/update-pedometer-goals")
  Future<PedometerGoals> updatePedometerGoals(@Body() UpdatePedometerGoals updatePedometerGoals);

  @POST("user/add-location-history")
  Future<Error> addLocationHistory(@Body() AddLocation addLocation);

  @POST("user/accept-request")
  Future<ContactRequest> acceptContactRequest(
      @Body() RequestModel requestModel);

  // @POST("user/accept-request")
  // Future<ContactRequest> getMyContactRequest(@Body() RequestModel requestModel);

  @POST("user/deny-request")
  Future<ContactRequest> denyContactRequest(@Body() RequestModel requestModel);

  @POST("user/deny-request")
  Future<ContactRequest> directContactRequest(
      @Body() DirectContactRequest directContactRequest);

  @POST("user/deny-request")
  Future<ContactRequest> sendContactRequest(
      @Body() SendContactReq sendContactReq);

  @GET("user/nearby-users")
  Future<NearbyUser> nearUser(
      @Query("onlyVaccinated") int onlyVaccinated,
      @Query("groupByCompany") int groupByCompany,
      @Query("lat") String lat,
      @Query("long") String long,
      @Query("page") int page);

  @GET("user/conversations")
  Future<Conversations> getMyConversations(@Query("limit") int limit, @Query("page") int page);




}
