import 'package:json_annotation/json_annotation.dart';

part 'subject_entity.g.dart';

@JsonSerializable()
class SubjectEntity{
  final int id;
  final String title;

  const SubjectEntity({required this.id, required this.title});

  factory SubjectEntity.fromJson(Map<String, dynamic> json) => _$SubjectEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectEntityToJson(this);
}