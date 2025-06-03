// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      img: json['img'] as String?,
      nicknames: (json['nicknames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      age: json['age'],
      gender: json['gender'] as String?,
      height: json['height'] as String?,
      status: json['status'] as String?,
      occupation: json['occupation'] as String?,
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      birthplace: json['birthplace'] as String?,
      residence: json['residence'] as String?,
      family: json['family'] as String?,
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'nicknames': instance.nicknames,
      'roles': instance.roles,
      'age': instance.age,
      'gender': instance.gender,
      'height': instance.height,
      'status': instance.status,
      'occupation': instance.occupation,
      'episodes': instance.episodes,
      'birthplace': instance.birthplace,
      'residence': instance.residence,
      'family': instance.family,
    };
