import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class QuestionResponse extends Equatable{

  final String category;
  final String difficulty;
  final String question;
  final String correctQuestion;
  final List<String> incorrectAnswer;

  const QuestionResponse({

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

  factory QuestionResponse.fromMap(Map<String,dynamic>map){
    //if(map == null) return null;


    return QuestionResponse(
      category: map ["category"] ?? "",
      difficulty: map ["difficulty"] ?? "",
      question: map ["question"] ?? "",
      correctQuestion: map ["correctQuestion"] ?? "",
      incorrectAnswer: List<String>.from(map ["incorrectAnswer"] ?? []),
    );
  }
}