import 'package:json_annotation/json_annotation.dart';
part 'lastCoordinate.g.dart';

@JsonSerializable()
class LastCoordinate{
  int ?long;
  int ?lat;
  String ?city;
  String ?city_aliases;
  String ?name;
  String ?search_name;
  String ?type;
  String ?country;
  String ?country_aliases;
  String ?country_code;
  int ?timing;
  LastCoordinate({
    this.long,
    this.lat,
    this.city,
    this.city_aliases,
    this.name,
    this.search_name,
    this.type,
    this.country,
    this.country_aliases,
    this.country_code,
    this.timing});

  factory LastCoordinate.fromJson(Map<String, dynamic> json) =>
      _$LastCoordinateFromJson(json);

  Map<String, dynamic> toJson() => _$LastCoordinateToJson(this);
}

