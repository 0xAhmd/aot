// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterModelAdapter extends TypeAdapter<CharacterModel> {
  @override
  final int typeId = 0;

  @override
  CharacterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      img: fields[2] as String?,
      nicknames: (fields[3] as List?)?.cast<String>(),
      roles: (fields[4] as List?)?.cast<String>(),
      age: fields[5] as dynamic,
      gender: fields[6] as String?,
      height: fields[7] as String?,
      status: fields[8] as String?,
      occupation: fields[9] as String?,
      episodes: (fields[10] as List?)?.cast<String>(),
      birthplace: fields[11] as String?,
      residence: fields[12] as String?,
      family: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.nicknames)
      ..writeByte(4)
      ..write(obj.roles)
      ..writeByte(5)
      ..write(obj.age)
      ..writeByte(6)
      ..write(obj.gender)
      ..writeByte(7)
      ..write(obj.height)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.occupation)
      ..writeByte(10)
      ..write(obj.episodes)
      ..writeByte(11)
      ..write(obj.birthplace)
      ..writeByte(12)
      ..write(obj.residence)
      ..writeByte(13)
      ..write(obj.family);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
