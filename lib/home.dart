import 'package:flutter/material.dart';
import 'package:flutterchatui/models/quizResponse.dart';
import 'package:flutterchatui/scorePage.dart';
import 'package:flutterchatui/services/randomize.dart';
import 'dart:async';

class Home extends StatefulWidget {
  final List<Result> questions;
  const Home({Key key, @required this.questions}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Result question;
  int counter = 0;
  int questionNumber = 0;
  List<String> randomOptions = [];
  int totalcorrectOption = 0;
  int correct = 1;
  Color isCorrectColor;

  void displayCurrentQuestion(){
    if(counter < widget.questions.length)
    {
    question = widget?.questions[counter];
    List<String> correctAns = [];
    correctAns.add(question.correctAnswer);

    List<String> options = [...question.incorrectAnswers, ...correctAns];

    var random = Randomize();
    randomOptions = random.shuffle(options);
    questionNumber ++;
    }
  }

  void selectAnswer(index){
    isCorrectColor = randomOptions[index] == question.correctAnswer ? Colors.green[200] : Colors.red[200];
    if(randomOptions[index] == question.correctAnswer){
      totalcorrectOption += correct;
    }
    counter++;

    if(counter == widget.questions.length){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ScorePage(finalScore: totalcorrectOption,)));
    }
      setState(() {
        displayCurrentQuestion();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayCurrentQuestion();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 10.0, 0),
          child: Column(
            children: <Widget>[
              Text('$questionNumber. ' + '' +
                question.question,
                style: TextStyle(
                    fontFamily: 'MavenPro',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 20.0),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: randomOptions.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 0),
                      child: Card(
                        color: isCorrectColor,
                        child: ListTile(
                          onTap: (){
                            selectAnswer(index);
                          },
                          title: Text(randomOptions[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.red[300],
                            radius: 15.0,
                          )

                        ),
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
