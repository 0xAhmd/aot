import 'package:json_annotation/json_annotation.dart';
part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  final int id;
  final String name;
  final String img;
  final String territory;
  final String region;

  final String debut;
  @JsonKey(name: 'notable_inhabitants')
  final List<String>? notableInhabitants;
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
