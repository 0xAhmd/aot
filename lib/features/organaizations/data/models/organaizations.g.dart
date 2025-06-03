// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organaizations.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrganaizationsAdapter extends TypeAdapter<Organaizations> {
  @override
  final int typeId = 2;

  @override
  Organaizations read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Organaizations(
      name: fields[1] as String,
      img: fields[2] as String,
      occupations: (fields[3] as List).cast<String>(),
      notableMembers: (fields[4] as List).cast<String>(),
      notableFormerMembers: (fields[5] as List).cast<String>(),
      affiliation: fields[6] as String,
      debut: fields[7] as String,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, Organaizations obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.occupations)
      ..writeByte(4)
      ..write(obj.notableMembers)
      ..writeByte(5)
      ..write(obj.notableFormerMembers)
      ..writeByte(6)
      ..write(obj.affiliation)
      ..writeByte(7)
      ..write(obj.debut);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrganaizationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
