import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutterapplications/src/quiz_app/quiz_brain.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Icon> scoreKeeper = [];
  QuizBrain quizBrain = new QuizBrain();

  void checkAnswer(bool userPickedAnswer) {
    if (!quizBrain.isFinished()) {
      setState(() {
        print('Your Answer is $userPickedAnswer');
        bool correctAnswer = quizBrain.getCorrectAnswer();
        print('Actual Anser is $correctAnswer');

        if (correctAnswer == userPickedAnswer) {
          scoreKeeper.add(
            Icon(Icons.check, color: Colors.green),
          );
        } else {
          scoreKeeper.add(
            Icon(Icons.close, color: Colors.red),
          );
        }
        quizBrain.nextQuestion();
      });
    } else {
      setState(() {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizBrain.resetQuestionCounter(); // reset questions counter.
        this.scoreKeeper = []; // empty icons list.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: new AppBar(
          title: Center(
            child: new Text('Quiz App'),
          ),
          backgroundColor: Colors.red.shade400,
        ),
        body: new SafeArea(
          child: new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: new Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: new Text(
                        quizBrain.getQuestionText(),
                        style: TextStyle(
                          fontSize: 27.0,
                          fontFamily: 'Amita',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text(
                        'True',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer(true);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      color: Colors.red,
                      child: Text(
                        'False',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer(false);
                      },
                    ),
                  ),
                ),
                Row(
                  children: scoreKeeper,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
