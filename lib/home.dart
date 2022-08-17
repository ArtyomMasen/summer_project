import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                Icon(
                  Icons.clear,
                  color: Colors.red,
                ),
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
                  'This is where questions go',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: null,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'This will be an  answer',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: null,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'This will be an  answer',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: null,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'This will be an  answer',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
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
