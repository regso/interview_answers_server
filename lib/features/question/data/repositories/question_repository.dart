import 'package:interview_answers_server/features/question/data/data_sources/question_data_source.dart';
import 'package:interview_answers_server/features/question/domain/entities/question_entity.dart';

class QuestionRepository {
  List<QuestionEntity> findQuestions({required int subjectId}) {
    final questions = QuestionDataSource().findQuestions(subjectId: subjectId);
    return [
      for (final data in questions)
        QuestionEntity(
          id: data['id'] as int,
          subjectId: data['subjectId'] as int,
          title: data['title'] as String,
          question: data['question'] as String,
          answer: data['answer'] as String,
          difficulty: data['difficulty'] as int,
        )
    ];
  }

  QuestionEntity getQuestion(
      {required int subjectId, required int questionId}) {
    final questions = QuestionDataSource().findQuestions(subjectId: subjectId);
    final question = questions
        .firstWhere((final item) => item['id'] == questionId, orElse: () => {});
    if (question.isNotEmpty) {
      return QuestionEntity.fromJson(question);
    }
    throw Exception('Not found.');
  }
}
