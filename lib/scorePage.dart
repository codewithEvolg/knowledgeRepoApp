import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  final int finalScore;

  const ScorePage({Key key, @required this.finalScore}) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 200.0, 30.0, 0),
              child: Text('You scored a total of ${widget.finalScore}',
                style: TextStyle(
                    color: Colors.black,
                  fontSize: 30.0
                ),
              ),
            ),
            SizedBox(height: 10.0),
            RaisedButton.icon(
              color: Colors.grey[300],
                onPressed: (){
                  Navigator.pushNamed(context, '/loading');
                },
                icon: Icon(Icons.restore,
                size: 20.0,
                color: Colors.green[600],
                ),
                label: Text('Take another Quiz'),
            ),
            SizedBox(height: 10.0),
            RaisedButton.icon(
              color: Colors.grey[300],
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.exit_to_app,
                size: 20.0,
                color: Colors.green[600],
              ),
              label: Text('End Quiz'),
            )
          ],
        ),
      ),
      );
  }
}
