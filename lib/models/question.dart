class Question {
  final String questionText;
  final bool answer;

  Question({required this.questionText, required this.answer});

  bool isCorrectAnswer(bool userAnswer) {
    return userAnswer == answer;
  }
}