// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organaizations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organaizations _$OrganaizationsFromJson(Map<String, dynamic> json) =>
    Organaizations(
      name: json['name'] as String,
      img: json['img'] as String,
      occupations: (json['occupations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      notableMembers: (json['notable_members'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      notableFormerMembers: (json['notable_former_members'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      affiliation: json['affiliation'] as String,
      debut: json['debut'] as String,
    )..id = (json['id'] as num?)?.toInt();

Map<String, dynamic> _$OrganaizationsToJson(Organaizations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'occupations': instance.occupations,
      'notable_members': instance.notableMembers,
      'notable_former_members': instance.notableFormerMembers,
      'affiliation': instance.affiliation,
      'debut': instance.debut,
    };
