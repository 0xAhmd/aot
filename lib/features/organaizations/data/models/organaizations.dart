import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'organaizations.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class Organaizations {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String img;
  @HiveField(3)
  final List<String> occupations;
  @HiveField(4)
  ///jsonkey here
  @JsonKey(name: 'notable_members')
  final List<String> notableMembers;
  @HiveField(5)
  @JsonKey(name: 'notable_former_members')
  final List<String> notableFormerMembers;
  @HiveField(6)
  final String affiliation;
  @HiveField(7)
  final String debut;

  factory Organaizations.fromJson(Map<String, dynamic> json) =>
      _$OrganaizationsFromJson(json);

  Organaizations({
    required this.name,
    required this.img,
    required this.occupations,
    required this.notableMembers,
    required this.notableFormerMembers,
    required this.affiliation,
    required this.debut,
  });

  Map<String, dynamic> toJson() => _$OrganaizationsToJson(this);
}
