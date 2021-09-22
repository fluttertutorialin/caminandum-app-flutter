import 'package:json_annotation/json_annotation.dart';
part 'lastCoordinate.g.dart';

@JsonSerializable()
class LastCoordinate{
  int long;
  int lat;
  String city;
  String city_aliases;
  String name;
  String search_name;
  String type;
  String country;
  String country_aliases;
  String country_code;
  int timing;
  LastCoordinate({
    required this.long,
    required this.lat,
    required this.city,
    required this.city_aliases,
    required this.name,
    required this.search_name,
    required this.type,
    required this.country,
    required this.country_aliases,
    required this.country_code,
    required this.timing});
  
  factory LastCoordinate.fromJson(Map<String, dynamic> json) =>
      _$LastCoordinateFromJson(json);

  Map<String, dynamic> toJson() => _$LastCoordinateToJson(this);
}

