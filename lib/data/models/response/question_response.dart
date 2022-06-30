import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/question.dart';

class QuestionResponse extends Equatable{

  final String category;
  final String difficulty;
  final String question;
  final String correctAnswer;
  final List<String> incorrectAnswer;

  const QuestionResponse({

    required this.category,
    required this.difficulty,
    required this.question,
    required this.correctAnswer,
    required this.incorrectAnswer

  });

  //implementation de Equatable
  @override
  List<Object> get props => [

    category,
    difficulty,
    question,
    correctAnswer,
    incorrectAnswer

  ];

  Question toEntity(){
    return Question (
      category : category,
      difficulty: difficulty,
      question : question,
      correctAnswer : correctAnswer,
      answers : incorrectAnswer..add(correctAnswer)..shuffle()
    );
  }

  factory QuestionResponse.fromMap(Map<String,dynamic>map){
    //if(map == null) return null;

    return QuestionResponse(
      category: map ["category"] ?? "",
      difficulty: map ["difficulty"] ?? "",
      question: map ["question"] ?? "",
      correctAnswer: map ["correctAnswer"] ?? "",
      incorrectAnswer: List<String>.from(map ["incorrectAnswer"] ?? []),
    );
  }
}