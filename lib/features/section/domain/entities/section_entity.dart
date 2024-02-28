import 'package:json_annotation/json_annotation.dart';

part 'section_entity.g.dart';

@JsonSerializable()
class SectionEntity{
  final int id;
  final String title;

  const SectionEntity({required this.id, required this.title});

  factory SectionEntity.fromJson(Map<String, dynamic> json) => _$SectionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SectionEntityToJson(this);
}