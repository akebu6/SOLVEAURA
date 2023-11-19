import 'package:flutter/cupertino.dart';

import 'package:solveaura/ui/pages/pre_test/models/calculus_questions_model.dart';
import 'package:solveaura/ui/pages/pre_test/models/algebra_question_model.dart';
import 'package:solveaura/ui/pages/pre_test/models/geometry_questions_model.dart';
import 'package:solveaura/ui/pages/pre_test/models/trig_questions_model.dart';

const Color cardColor = Color(0xFF4993FA);

class MathTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  MathTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<MathTopics> mathTopicsList = [
  MathTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.square_stack_3d_up,
    topicName: "Algebra",
    topicQuestions: algebraQuestionsList,
  ),
  MathTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.arrow_2_circlepath,
    topicName: "Geometry",
    topicQuestions: geometryQuestionsList,
  ),
  MathTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.paperplane,
    topicName: "Trigonometry",
    topicQuestions: trigQuestionsList,
  ),
  MathTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
    topicName: "Calculus",
    topicQuestions: calculusQuestionsList,
  ),
];
