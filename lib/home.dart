import 'package:flutter/material.dart';
import 'package:summer_project/answer.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool answerWasSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter QuizApp',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                if (_scoreTracker.length == 0)
                SizedBox(
                  height: 25.0,
                ),
                if (_scoreTracker.length > 0) ..._scoreTracker
              ],
            ),
            Container(
              width: double.infinity,
              height: 130.0,
              margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  _questions[_questionIndex]['question'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ...(_questions[_questionIndex]['answers']
            as List<Map<String, dynamic>>)
                .map(
                  (answer) => Answer(
                answerText: answer['answerText'],
                answerColor: answerWasSelected
                    ? answer['score']
                      ? Colors.green
                      : Colors.red
                    : null,

                  ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60.0),
              ),
              onPressed: () {},
              child: Text('Next Question'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '0/9',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final _questions = const [
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
  {
    'question': 'How much is the fish?',
    'answers': [
      {'answerText' : '88rub', 'score': true},
      {'answerText' : '98rub', 'score': false},
      {'answerText' : '188rub', 'score': false},
    ],
  },
];
