import 'dart:convert';

import 'package:interview_answers_server/config/env.dart';
import 'package:interview_answers_server/features/question/data/repositories/question_repository.dart';
import 'package:interview_answers_server/features/subject/data/repositories/subject_repository.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_plus/shelf_plus.dart';

void main() async {
  const env = Env();
  await serve(_getRoutes(), env.serverIp, env.serverPort);
}

Handler _getRoutes() {
  final router = RouterPlus();
  router.get(
    '/subjects',
    () async => SubjectRepository().findSubjects(),
  );
  router.get(
    '/subjects/<subject_id>/questions',
    (Request request, String subjectId) => jsonEncode(
      QuestionRepository().findQuestions(subjectId: int.parse(subjectId)),
    ),
  );
  router.get(
    '/subjects/<subject_id>/questions/<question_id>',
    (Request request, String subjectId, String questionId) => jsonEncode(
      QuestionRepository().getQuestion(
        subjectId: int.parse(subjectId),
        questionId: int.parse(questionId),
      ),
    ),
  );
  return router;
}
