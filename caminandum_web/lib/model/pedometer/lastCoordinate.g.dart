// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lastCoordinate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastCoordinate _$LastCoordinateFromJson(Map<String, dynamic> json) {
  return LastCoordinate(
    long: json['long'] as int,
    lat: json['lat'] as int,
    city: json['city'] as String,
    city_aliases: json['city_aliases'] as String,
    name: json['name'] as String,
    search_name: json['search_name'] as String,
    type: json['type'] as String,
    country: json['country'] as String,
    country_aliases: json['country_aliases'] as String,
    country_code: json['country_code'] as String,
    timing: json['timing'] as int,
  );
}

Map<String, dynamic> _$LastCoordinateToJson(LastCoordinate instance) =>
    <String, dynamic>{
      'long': instance.long,
      'lat': instance.lat,
      'city': instance.city,
      'city_aliases': instance.city_aliases,
      'name': instance.name,
      'search_name': instance.search_name,
      'type': instance.type,
      'country': instance.country,
      'country_aliases': instance.country_aliases,
      'country_code': instance.country_code,
      'timing': instance.timing,
    };
