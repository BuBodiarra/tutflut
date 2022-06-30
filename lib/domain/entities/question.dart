import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Question extends Equatable{

  final String category;
  final String difficulty;
  final String question;
  final String correctQuestion;
  final List<String> incorrectAnswer;

  const Question({

    required this.category,
    required this.difficulty,
    required this.question,
    required this.correctQuestion,
    required this.incorrectAnswer

  });

  @override
  List<Object> get props => [

    category,
    difficulty,
    question,
    correctQuestion,
    incorrectAnswer

  ];

}