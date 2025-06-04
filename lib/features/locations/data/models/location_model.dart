import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class LocationModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String img;
  @HiveField(3)
  final String territory;
  @HiveField(4)
  final String region;
  @HiveField(5)
  final String debut;
  @HiveField(6)
  @JsonKey(name: 'notable_inhabitants')
  final List<String>? notableInhabitants;
  @HiveField(7)
  @JsonKey(name: 'notable_former_inhabitants')
  final List<String>? notableFormerInhabitants;

  LocationModel({
    required this.id,
    required this.name,
    required this.img,
    required this.territory,
    required this.region,
    required this.debut,
    this.notableInhabitants,
    this.notableFormerInhabitants,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
