import 'package:flutter/material.dart';
import 'package:flutterchatui/landingpage.dart';
import 'package:flutterchatui/loading.dart';
import 'package:flutterchatui/home.dart';
import 'package:flutterchatui/scorePage.dart';

void main(){
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/loading': (context) => Loading(),
        '/home': (context) => Home(),
        '/scorePage': (context) => ScorePage()
      },
    )
  );
}