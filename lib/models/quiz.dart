import 'question.dart';

class Quiz {
  List<Question> questions = [
    Question(
      questionText: 'The Earth is flat.',
      answer: false,
    ),
    Question(
      questionText: 'The Sun is a star.',
      answer: true,
    ),
    Question(
      questionText: 'Water boils at 100°C.',
      answer: true,
    ),
    // Add more questions here
  ];
}