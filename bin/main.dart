import 'dart:convert';

import 'package:interview_answers_server/config/env.dart';
import 'package:interview_answers_server/features/question/data/repositories/question_repository.dart';
import 'package:interview_answers_server/features/section/data/repositories/section_repository.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_plus/shelf_plus.dart';

void main() async {
  const env = Env();
  await serve(_getRoutes(), env.serverIp, env.serverPort);
}

Handler _getRoutes() {
  final router = RouterPlus();
  router.get(
    '/sections',
    () async => jsonEncode(SectionRepository().findSections()),
  );
  router.get(
    '/sections/<section_id>/questions',
    (Request request, String sectionId) => jsonEncode(
      QuestionRepository().findQuestions(sectionId: int.parse(sectionId)),
    ),
  );
  router.get(
    '/sections/<section_id>/questions/<question_id>',
    (Request request, String sectionId, String questionId) =>
        'question $sectionId $questionId',
  );
  return router;
}
