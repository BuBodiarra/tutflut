import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class QuestionResponse extends Equatable {

  final String category;
  final String difficulty;
  final String question;
  final String correctAnswer;
  final List<String> incorrectAnswers;

  const QuestionResponse({

   required this.category,
   required this.difficulty,
   required this.question,
   required this.correctAnswer,
   required this.incorrectAnswers
});

  @override
  List<Object> get props => [
    category,
    difficulty,
    question,
    correctAnswer,
    incorrectAnswers
  ];
}