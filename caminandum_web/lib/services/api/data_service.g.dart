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
  Future<Error> signUp(userProfile) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userProfile.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Error>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/signup',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Error.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Error> searchUser(userProfile) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userProfile.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Error>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Error.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Error> unblockUser(userProfile) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userProfile.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Error>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/unblock-user',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Error.fromJson(_result.data!);
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
  Future<GetMyUserModel> getMyUserProfile(userProfile) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userProfile.toJson());
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
  Future<PedometerStat> getThisMonthPedometerStat(pedometerStat) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(pedometerStat.toJson());
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
  Future<PedometerStat> updatePedometerStat(updatePedometerStat) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
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
  Future<PedometerStat> todayPedometerStat(updatePedometerStat) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updatePedometerStat.toJson());
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
  Future<Error> addLocationHistory(addLocation) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(addLocation.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Error>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'user/add-location-history',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Error.fromJson(_result.data!);
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
                .compose(_dio.options, 'user/deny-request',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContactRequest.fromJson(_result.data!);
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
                .compose(_dio.options, 'user/deny-request',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContactRequest.fromJson(_result.data!);
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
