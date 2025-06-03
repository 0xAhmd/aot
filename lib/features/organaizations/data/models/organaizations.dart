import 'package:json_annotation/json_annotation.dart';

part 'organaizations.g.dart';

@JsonSerializable()
class Organaizations {
  int? id;
  final String name;
  final String img;
  final List<String> occupations;

  ///jsonkey here
  @JsonKey(name: 'notable_members')
  final List<String> notableMembers;
  @JsonKey(name: 'notable_former_members')
  final List<String> notableFormerMembers;
  final String affiliation;
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
