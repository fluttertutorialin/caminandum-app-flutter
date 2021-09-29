class ErrorModel {
  ErrorModel({
    required this.msg,
    required this.warnings,
  });
  late final String msg;
  late final List<String> warnings;

  ErrorModel.fromJson(Map<String, dynamic> json){
    msg = json['msg'];
    warnings = List.castFrom<dynamic, String>(json['warnings']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['msg'] = msg;
    _data['warnings'] = warnings;
    return _data;
  }
}