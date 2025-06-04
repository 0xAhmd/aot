// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titans_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TitanAdapter extends TypeAdapter<Titan> {
  @override
  final int typeId = 3;

  @override
  Titan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Titan(
      id: fields[0] as int?,
      name: fields[1] as String?,
      img: fields[2] as String?,
      height: fields[3] as String?,
      abilities: (fields[4] as List?)?.cast<String>(),
      currentInheritor: fields[5] as String?,
      formerInheritors: (fields[6] as List?)?.cast<String>(),
      allegiance: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Titan obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.abilities)
      ..writeByte(5)
      ..write(obj.currentInheritor)
      ..writeByte(6)
      ..write(obj.formerInheritors)
      ..writeByte(7)
      ..write(obj.allegiance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TitanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
