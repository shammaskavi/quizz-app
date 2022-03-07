import 'package:flutter/material.dart';

import 'package:quizz_app/quiz.dart';
import 'package:quizz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); // the underscore before the MyApp State turns the MyAppState class from public to private class
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have  more questions");
      print(_totalScore);
    } else {
      print("We do not have any question");
      print(_totalScore);
    }
  }

  // the underscore symbolises that its a private property of the class and can't be accesed from anywhere else
  //const is not available at class level hence the other two options are given below

  // static const questions = [
  final _questions = const [
    {
      'questionText': "How would you help a friend in need?",
      'answers': [
        {'text': "Cheer 'em up with jokes", 'score': 30},
        {'text': "Why should I care", 'score': 10},
        {'text': "Be there when in need", 'score': 40},
        {'text': "Listen to them", 'score': 50},
        {'text': "Support emotionally", 'score': 20},
      ],
    },

    {
      'questionText': "Pick a movie genre...",
      'answers': [
        {'text': "Comedy", 'score': 30},
        {'text': "Action", 'score': 20},
        {'text': "Romance", 'score': 50},
        {'text': "Drama", 'score': 40},
        {'text': "Sci-fi", 'score': 10},
      ],
    },

    {
      'questionText':
          "You are in movie theater, and you find the movie boring, you...",
      'answers': [
        {'text': "Sleep", 'score': 20},
        {'text': "Watch it anyway", 'score': 40},
        {'text': "Leave", 'score': 50},
        {'text': "Throw popcorn at random people", 'score': 30},
        {'text': "Start texting my friends", 'score': 10},
      ],
    },

    {
      'questionText': "Telemarketers call you again! How do you react?",
      'answers': [
        {'text': "Hang up", 'score': 10},
        {'text': "Make a scarstic comment", 'score': 30},
        {'text': "Tell them off", 'score': 20},
        {'text': "Tell them I'm not interested", 'score': 40},
        {'text': "Listen", 'score': 50},
      ],
    },

    {
      'questionText': "What is the best topic of conversation?",
      'answers': [
        {'text': "Relationships", 'score': 50},
        {'text': "Gossips and controversies", 'score': 40},
        {'text': "Funny jokes", 'score': 30},
        {'text': "Fashion", 'score': 10},
        {'text': "My opinion", 'score': 20},
      ],
    },

    {
      'questionText': "What is most important to you?",
      'answers': [
        {'text': "Career", 'score': 20},
        {'text': "Education", 'score': 40},
        {'text': "My look", 'score': 10},
        {'text': "Relationships", 'score': 50},
        {'text': "Having fun", 'score': 30},
      ],
    },

    {
      'questionText': "When was the last time you had a fist fight?",
      'answers': [
        {'text': "When I was very young", 'score': 20},
        {'text': "Last month", 'score': 30},
        {'text': "Can't remember", 'score': 40},
        {'text': "Just this week!", 'score': 10},
        {'text': "Never", 'score': 50},
      ],
    },

    {
      'questionText': "Which of these best apply to you?",
      'answers': [
        {'text': "Stop crying", 'score': 40},
        {'text': "You're so sweet", 'score': 10},
        {'text': "Be serious!", 'score': 30},
        {'text': "Calm down!", 'score': 20},
        {'text': "None of the above", 'score': 50},
      ],
    },

    {
      'questionText': "WHat is the hardest thing in your everyday life?",
      'answers': [
        {'text': "Keeping my emotions in check", 'score': 50},
        {'text': "Expressing Love", 'score': 40},
        {'text': "Overcomming fear", 'score': 20},
        {'text': "Taking anything seriouslly", 'score': 30},
        {'text': "Commitments", 'score': 10},
      ],
    },

    {
      'questionText': "How would you help a homeless man?",
      'answers': [
        {'text': "Give him some money", 'score': 20},
        {'text': "Offer him a job", 'score': 30},
        {'text': "Give him some advice", 'score': 40},
        {'text': "Buy him a meal!", 'score': 50},
        {'text': "Ignore him", 'score': 20},
      ],
    },
    // the above data type is a map data type: similar to nested lists
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Weird Attractive Trait"),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Center(
                heightFactor: double.infinity,
                child: Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                ),
              )
            : Result(
                _totalScore,
                _resetQuiz,
              ),
      ),
    );
  }
}
