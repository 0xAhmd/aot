import 'package:json_annotation/json_annotation.dart';

part 'titans_model.g.dart';

@JsonSerializable()
class Titan {
  final int? id;
  final String? name;
  final String? img;
  final String? height;
  final List<String>? abilities;
  final String? currentInheritor;
  final List<String>? formerInheritors;
  final String? allegiance;

  Titan({
    required this.id,
    required this.name,
    required this.img,
    required this.height,
    required this.abilities,
    required this.currentInheritor,
    required this.formerInheritors,
    required this.allegiance,
  });

  factory Titan.fromJson(Map<String, dynamic> json) => _$TitanFromJson(json);

  Map<String, dynamic> toJson() => _$TitanToJson(this);
}
