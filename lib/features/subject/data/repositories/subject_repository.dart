import 'package:interview_answers_server/features/subject/domain/entities/subject_entity.dart';

class SubjectRepository {
  static const dataSubjects = [
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

  List<SubjectEntity> findSubjects() {
    return [
      for (final data in dataSubjects)
        SubjectEntity(
          id: data['id'] as int,
          title: data['title'] as String,
        )
    ];
  }
}
