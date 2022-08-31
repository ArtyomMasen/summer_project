import 'package:flutter/material.dart';
import 'package:summer_project/main.dart';
import 'package:summer_project/screens/first_screen.dart';

import '../data/question_list.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color secondColor = Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congrats!", style: TextStyle(color: Colors.white, fontSize: 38.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "your score is", style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.0),
            Text("${widget.score} / ${questions.length}", style: TextStyle(color: Colors.orange, fontSize: 46.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 50.0,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              color: Colors.orange,
              child: Text("RESTAAART", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
