// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['img'] as String,
      territory: json['territory'] as String,
      region: json['region'] as String,
      debut: json['debut'] as String,
      notableInhabitants: (json['notable_inhabitants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      notableFormerInhabitants:
          (json['notable_former_inhabitants'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'territory': instance.territory,
      'region': instance.region,
      'debut': instance.debut,
      'notable_inhabitants': instance.notableInhabitants,
      'notable_former_inhabitants': instance.notableFormerInhabitants,
    };
