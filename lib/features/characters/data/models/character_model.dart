import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_model.g.dart'; // For JSON serialization

@HiveType(typeId: 0)
@JsonSerializable()
class CharacterModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? name;

  @HiveField(2)
  @JsonKey(name: 'img')
  final String? img;

  @HiveField(3)
  List<String>? nicknames;

  @HiveField(4)
  List<String>? roles;

  @HiveField(5)
  dynamic age;

  @HiveField(6)
  String? gender;

  @HiveField(7)
  String? height;

  @HiveField(8)
  String? status;

  @HiveField(9)
  String? occupation;

  @HiveField(10)
  List<String>? episodes;

  @HiveField(11)
  String? birthplace;

  @HiveField(12)
  String? residence;

  @HiveField(13)
  String? family;

  CharacterModel({
    required this.id,
    required this.name,
     this.img,
    required this.nicknames,
    required this.roles,
    this.age,
    required this.gender,
    required this.height,
    required this.status,
    required this.occupation,
    required this.episodes,
    required this.birthplace,
    required this.residence,
    required this.family,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}
