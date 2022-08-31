import 'package:flutter/material.dart';
import 'package:summer_project/main.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
              'Salam user', style: TextStyle(color: Colors.white, fontSize: 38.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Welcome to MemE Quiz', style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.0,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              color: Colors.orange,
              child: Text("Go Go Go", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
