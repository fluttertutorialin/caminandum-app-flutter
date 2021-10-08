import 'dart:developer';

import 'package:caminandum_web/model/chat/conversations.dart';
import 'package:caminandum_web/model/contact/contact_request.dart';
import 'package:caminandum_web/model/contact/direct_contact_request.dart';
import 'package:caminandum_web/model/contact/request_model.dart';
import 'package:caminandum_web/model/contact/send_contact_req.dart';
import 'package:caminandum_web/model/error/error.dart';
import 'package:caminandum_web/model/notifications/notifications.dart';
import 'package:caminandum_web/model/pedometer/AnonymousUser.dart';
import 'package:caminandum_web/model/pedometer/PedometerStat.dart';
import 'package:caminandum_web/model/pedometer/pedometer_goals.dart';
import 'package:caminandum_web/model/pedometer/user_area_performance.dart';
import 'package:caminandum_web/model/user/add_location.dart';
import 'package:caminandum_web/model/user/get_my_user_model.dart';
import 'package:caminandum_web/model/user/near_user.dart';
import 'package:caminandum_web/model/user/report_user.dart';
import 'package:caminandum_web/model/user/update_pedometer_goals.dart';
import 'package:caminandum_web/model/user/update_pedometer_stat.dart';
import 'package:caminandum_web/model/user/user.dart';
import 'package:caminandum_web/model/user/userProfileResponse.dart';
import 'package:caminandum_web/model/user/user_last_location.dart';
import 'package:caminandum_web/model/user/vaccineStatus.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'data_service.g.dart';

@RestApi()
abstract class GetDataService {
  factory GetDataService(Dio dio, {String baseUrl}) = _GetDataService;

  //most relevant endpoints

  //for profile
  @POST("user/add-location-history")
  Future<ResMessage> addLocationHistory(@Body() AddLocation addLocation);
  @GET("profile/{userID}")
  Future<GetMyUserModel> getaUserProfile(@Path("userID") String userID);
  @GET("profiles}")
  Future<GetMyUserModel> profiles(@Query("userIDs") List<String> userID);
  @PUT("user-last-location}")
  Future<UserLastLoction> UpdateUserGeolocation(@Body() UserLastLoction userLastLoction);
  @GET("user/covid-vaccine-status}")
  Future<VaccineStatus> getVaccineStatus();


  //for Homepage
  @GET("me")
  Future<GetMyUserModel> getMyUserProfile();
  @GET("user/nearby-users")
  Future<NearbyUser> nearUser(
      @Query("onlyVaccinated") int onlyVaccinated,
      @Query("groupByCompany") int groupByCompany,
      @Query("lat") String lat,
      @Query("long") String long,
      @Query("page") int page);
  @GET("user/nearby-users")
  Future<NearbyUser> geoNearByUser(
      @Query("onlyVaccinated") int onlyVaccinated,
      @Query("groupByCompany") int groupByCompany,
      @Query("lat") String lat,
      @Query("long") String long,
      @Query("max_radius ") String max_radius ,
      @Query("page") int page);




  //for SECURITY
  @PUT("user/unblock-user")
  Future<ResMessage> unblockUser(@Query("user_id ") String user_id );
  @PUT("user/report-user")
  Future<ResMessage> reportUser(@Body() ReportUser reportUser,@Query("user_id ") String user_id );

  //for NOTIFICATIONS
  @GET("user/notifications")
  Future<Notifications> getNotifications(
      @Query("read") String read, @Query("publish") String publish,
      @Query("page") int page, @Query("limit") int limit);
  @POST("user/accept-request")
  Future<ContactRequest> acceptContactRequest(
      @Body() RequestModel requestModel);
  @GET("user/contact-requests")
  Future<ContactRequest> getMyContactRequest(@Query("fetch_profiles") String fetch_profiles);
  @POST("user/deny-request")
  Future<ContactRequest> denyContactRequest(@Body() RequestModel requestModel);
  @POST("user/direct-contact-request")
  Future<ContactRequest> directContactRequest(
      @Body() DirectContactRequest directContactRequest);


  //for Pedometer
  @PUT("pedometer/stats")
  Future<PedometerStat> updatePedometerStat(
      @Body() UpdatePedometerStat updatePedometerStat,@Query("increment") int increment);
  @PUT("pedometer/today-stats")
  Future<PedometerStat> updateTodaysStat(
      @Body() UpdatePedometerStat updatePedometerStat);
  @GET("pedometer/today-stats")
  Future<PedometerStat> todayPedometerStat();
  @GET("pedometer/month-stats")
  Future<PedometerStat> getThisMonthPedometerStat();
  @PUT("pedometer/update-pedometer-goals")
  Future<PedometerGoals> updatePedometerGoals(
      @Body() UpdatePedometerGoals updatePedometerGoals);
  @GET("pedometer/my-area-performance")
  Future<UserAreaPerformance> getUserAreaPerformance(
      @Query("max_radius") String max_radius);
  @POST("anonymous/user/create-token")
  Future<AnonymousUser> createAnonymousUser(
      @Body() AnonymousUser anonymousUser);



  //Other useful endpoints
  @POST("user/login")
  Future<UserProfileResponse> login(@Body() UserProfile userProfile);

  @MultiPart()
  @POST("user/signup")
  Future<ResMessage> signUp(@Body() UserProfile userProfile);

  @GET("user/search")
  Future<ResMessage> searchUser(@Query("page") int page,@Query("limit") int limit,
      @Query("q") String q);

  @POST("user/send-request")
  Future<ContactRequest> sendContactRequest(
      @Body() SendContactReq sendContactReq);

  @GET("user/conversations")
  Future<Conversations> getMyConversations(@Query("limit") int limit, @Query("page") int page);
}
