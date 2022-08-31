import 'package:flutter/material.dart';
import 'package:summer_project/data/question_list.dart';
import 'package:summer_project/screens/first_screen.dart';
import 'package:summer_project/screens/result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);

  PageController? _controller = PageController(initialPage: 0);

  bool isPressed = false;
  Color trueAnswer = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1} / ${questions.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 28.0,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 8.0,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  questions[index].question!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                for(int i = 0; i < questions[index].answer!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 18.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions[index].answer!.entries.toList()[i].value
                              ? trueAnswer
                              : isWrong
                          : secondColor,
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      onPressed: isPressed
                          ? () {}
                          : () {
                        setState(() {
                          isPressed = true;
                        });
                        if(questions[index].answer!.entries.toList()[i].value){
                          score += 1;
                          print(score);
                        }
                      },
                      child: Text(
                        questions[index].answer!.keys.toList()[i],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(score)));
                              }
                              : () {
                                  _controller!.nextPage(duration: Duration(milliseconds: 1), curve: Curves.ease);
                                } : null,
                      style: ButtonStyle(),
                      child: Text(
                        index + 1 == questions.length
                            ? "See result"
                            : "Next question",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
