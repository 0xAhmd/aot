import 'package:json_annotation/json_annotation.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  int? id;
  String? name;
  @JsonKey(name: 'img')
  final String? img;
  List<String>? nicknames;
  List<String>? roles;
  dynamic age;
  String? gender;
  String? height;
  String? status;
  String? occupation;
  List<String>? episodes;
  String? birthplace;
  String? residence;
  String? family;

  CharacterModel({
    required this.id,
    required this.name,
    required this.img,
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
