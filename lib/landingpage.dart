import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgimage.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(90.0, 150.0, 10.0, 0),
            child: Column(
              children: <Widget>[
                Text('Knowledge Repo',
                style: TextStyle(
                  fontFamily: 'MavenPro',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]
                ),
                ),
//                SizedBox(height: 5.0),
                FlatButton.icon(
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Start Quiz',
                  style: TextStyle(
                      fontFamily: 'MavenPro',
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]
                  ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/loading');
                  },
                ),

              ],
            ),
          )
            ),
          ),
        );
  }
}
