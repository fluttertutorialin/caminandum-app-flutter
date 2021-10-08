// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GetDataService implements GetDataService {
  _GetDataService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResMessage> addLocationHistory(addLocation) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(addLocation.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResMessage>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/add-location-history',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResMessage.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetMyUserModel> getaUserProfile(userID) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetMyUserModel>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'profile/$userID',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetMyUserModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetMyUserModel> profiles(userID) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userIDs': userID};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetMyUserModel>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'profiles}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetMyUserModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserLastLoction> UpdateUserGeolocation(userLastLoction) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userLastLoction.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserLastLoction>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user-last-location}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserLastLoction.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VaccineStatus> getVaccineStatus() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VaccineStatus>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/covid-vaccine-status}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VaccineStatus.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetMyUserModel> getMyUserProfile() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetMyUserModel>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'me',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetMyUserModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NearbyUser> nearUser(
      onlyVaccinated, groupByCompany, lat, long, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'onlyVaccinated': onlyVaccinated,
      r'groupByCompany': groupByCompany,
      r'lat': lat,
      r'long': long,
      r'page': page
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NearbyUser>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/nearby-users',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NearbyUser.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NearbyUser> geoNearByUser(
      onlyVaccinated, groupByCompany, lat, long, max_radius, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'onlyVaccinated': onlyVaccinated,
      r'groupByCompany': groupByCompany,
      r'lat': lat,
      r'long': long,
      r'max_radius ': max_radius,
      r'page': page
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NearbyUser>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/nearby-users',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NearbyUser.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResMessage> unblockUser(user_id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user_id ': user_id};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResMessage>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/unblock-user',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResMessage.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResMessage> reportUser(reportUser, user_id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user_id ': user_id};
    final _data = <String, dynamic>{};
    _data.addAll(reportUser.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResMessage>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/report-user',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResMessage.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Notifications> getNotifications(read, publish, page, limit) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'read': read,
      r'publish': publish,
      r'page': page,
      r'limit': limit
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Notifications>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/notifications',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Notifications.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ContactRequest> acceptContactRequest(requestModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ContactRequest>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/accept-request',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContactRequest.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ContactRequest> getMyContactRequest(fetch_profiles) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'fetch_profiles': fetch_profiles
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ContactRequest>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/contact-requests',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContactRequest.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ContactRequest> denyContactRequest(requestModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ContactRequest>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/deny-request',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContactRequest.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ContactRequest> directContactRequest(directContactRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(directContactRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ContactRequest>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/direct-contact-request',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContactRequest.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PedometerStat> updatePedometerStat(
      updatePedometerStat, increment) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'increment': increment,
    };
    final _data = <String, dynamic>{};
    _data.addAll(updatePedometerStat.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PedometerStat>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'pedometer/stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PedometerStat.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PedometerStat> updateTodaysStat(updatePedometerStat) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updatePedometerStat.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PedometerStat>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'pedometer/today-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PedometerStat.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PedometerStat> todayPedometerStat() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PedometerStat>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'pedometer/today-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PedometerStat.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PedometerStat> getThisMonthPedometerStat() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PedometerStat>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'pedometer/month-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PedometerStat.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PedometerGoals> updatePedometerGoals(updatePedometerGoals) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updatePedometerGoals.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PedometerGoals>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'pedometer/update-pedometer-goals',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PedometerGoals.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserAreaPerformance> getUserAreaPerformance(max_radius) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'max_radius': max_radius};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserAreaPerformance>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'pedometer/my-area-performance',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserAreaPerformance.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AnonymousUser> createAnonymousUser(anonymousUser) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(anonymousUser.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AnonymousUser>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'anonymous/user/create-token',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AnonymousUser.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserProfileResponse> login(userProfile) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userProfile.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserProfileResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserProfileResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResMessage> signUp(userProfile) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userProfile.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResMessage>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/signup',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResMessage.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResMessage> searchUser(page, limit, q) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'limit': limit,
      r'q': q
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResMessage>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResMessage.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ContactRequest> sendContactRequest(sendContactReq) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sendContactReq.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ContactRequest>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/send-request',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContactRequest.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Conversations> getMyConversations(limit, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit, r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Conversations>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/conversations',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Conversations.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
