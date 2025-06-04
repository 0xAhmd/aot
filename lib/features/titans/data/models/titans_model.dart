import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'titans_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class Titan {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? img;
  @HiveField(3)
  final String? height;
  @HiveField(4)
  final List<String>? abilities;
  @HiveField(5)
  final String? currentInheritor;
  @HiveField(6)
  final List<String>? formerInheritors;
  @HiveField(7)
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
