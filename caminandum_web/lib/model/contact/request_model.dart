// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

RequestModel requestModelFromJson(String str) => RequestModel.fromJson(json.decode(str));

String requestModelToJson(RequestModel data) => json.encode(data.toJson());

class RequestModel {
  RequestModel({
    this.requestId,
  });

  String ?requestId;

  factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
    requestId: json["request_id"],
  );

  Map<String, dynamic> toJson() => {
    "request_id": requestId,
  };
}
