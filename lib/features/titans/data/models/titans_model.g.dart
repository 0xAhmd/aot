// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titans_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Titan _$TitanFromJson(Map<String, dynamic> json) => Titan(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      img: json['img'] as String?,
      height: json['height'] as String?,
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      currentInheritor: json['currentInheritor'] as String?,
      formerInheritors: (json['formerInheritors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allegiance: json['allegiance'] as String?,
    );

Map<String, dynamic> _$TitanToJson(Titan instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'height': instance.height,
      'abilities': instance.abilities,
      'currentInheritor': instance.currentInheritor,
      'formerInheritors': instance.formerInheritors,
      'allegiance': instance.allegiance,
    };
