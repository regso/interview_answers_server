import 'package:interview_answers_server/features/section/domain/entities/section_entity.dart';

class SectionRepository {
  static const dataSections = [
    {
      'id': 1,
      'title': 'Flutter',
    },
    {
      'id': 2,
      'title': 'Dart',
    },
    {
      'id': 3,
      'title': 'Общие',
    },
    {
      'id': 4,
      'title': 'HR',
    },
  ];

  List<SectionEntity> findSections() {
    return [
      for (final data in dataSections)
        SectionEntity(
          id: data['id'] as int,
          title: data['title'] as String,
        )
    ];
  }
}
