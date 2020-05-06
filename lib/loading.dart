import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterchatui/home.dart';
import 'package:flutterchatui/services/fetchdata.dart';
import 'package:flutterchatui/models/quizResponse.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void CollectQuestions() async{
    MultipleChoiceQuestions instance = MultipleChoiceQuestions();
    List<Result> questions = await instance.fetchQuestions();
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => Home(questions: questions)));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CollectQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SpinKitWanderingCubes(
          size: 50.0,
            color: Colors.grey[600],
        )
      ),
    );
  }
}
