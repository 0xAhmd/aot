// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationModelAdapter extends TypeAdapter<LocationModel> {
  @override
  final int typeId = 1;

  @override
  LocationModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationModel(
      id: fields[0] as int,
      name: fields[1] as String,
      img: fields[2] as String,
      territory: fields[3] as String,
      region: fields[4] as String,
      debut: fields[5] as String,
      notableInhabitants: (fields[6] as List?)?.cast<String>(),
      notableFormerInhabitants: (fields[7] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, LocationModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.territory)
      ..writeByte(4)
      ..write(obj.region)
      ..writeByte(5)
      ..write(obj.debut)
      ..writeByte(6)
      ..write(obj.notableInhabitants)
      ..writeByte(7)
      ..write(obj.notableFormerInhabitants);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
