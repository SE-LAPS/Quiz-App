import 'package:flutter/material.dart';
import 'models/quiz.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  Quiz quiz = Quiz();
  int currentQuestionIndex = 0;
  int score = 0;

  void answerQuestion(bool answer) {
    setState(() {
      if (quiz.questions[currentQuestionIndex].isCorrectAnswer(answer)) {
        score++;
      }
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: currentQuestionIndex < quiz.questions.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quiz.questions[currentQuestionIndex].questionText,
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => answerQuestion(true),
                  child: Text('True'),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () => answerQuestion(false),
                  child: Text('False'),
                ),
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your score is $score/${quiz.questions.length}',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentQuestionIndex = 0;
                        score = 0;
                      });
                    },
                    child: Text('Restart Quiz'),
                  ),
                ],
              ),
            ),
    );
  }
}